using EDM.Scrubber.Models.DTOs;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace EDM.Scrubber.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly IConfiguration _config;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private List<string> _errors;

        public AccountController(UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, IConfiguration config, IHttpContextAccessor httpContextAccessor)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _errors = new List<string>();
            _config = config;
            _httpContextAccessor = httpContextAccessor;
        }
        
        [HttpGet("[action]")]
        [Authorize]
        public async Task<IActionResult> ValidateToken()
        {
            var user = await _userManager.GetUserAsync(HttpContext.User);
            var role = await _userManager.GetRolesAsync(user);
            return Ok(new { Status = 200, Token = GenerateJSONWebToken(user, role[0]), User = user });
        }
        [HttpPost("[action]")]
       
        public async Task<IActionResult> SignIn(Login user)
        {

            var result = await AuthenticateUser(user.Email, user.Password);

            if (result.Succeeded)
            {
                var systemUser = await _userManager.FindByEmailAsync(user.Email);
                var role = await _userManager.GetRolesAsync(systemUser);

                var tokenString = GenerateJSONWebToken(systemUser, role[0]);

                return Ok(new { Status = 200, Token = tokenString,User=systemUser });
            }
            else
            {
                return BadRequest(new Response<object>(400, "Username and email is not valid"));
            }


        }



        [HttpPost("[action]")]
        public async Task<IActionResult> SignUp(User user)
        {
            IdentityUser newUser = new IdentityUser()
            {
                Email = user.Email,
                PasswordHash = user.Password,
                UserName = user.Email,

            };
            if (ModelState.IsValid)
            {
                var result = await _userManager.CreateAsync(newUser, user.Password);

                if (result.Succeeded)
                {
                    var status = await _userManager.AddToRoleAsync(newUser, "Publisher");

                    if (status.Succeeded)
                    {

                        return Ok(new Response<object>(200, "User created successfully"));
                    }
                    else
                    {
                        foreach (var error in status.Errors)
                        {
                            _errors.Add(error.Description);
                        }
                    }


                }
                else
                {
                    foreach (var error in result.Errors)
                    {
                        _errors.Add(error.Description);
                    }
                }


            }

            return BadRequest(new ErrorResponse(400, _errors, null));
        }

        [NonAction]
        private string GenerateJSONWebToken(IdentityUser user, string role)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[]
            {
             new Claim(JwtRegisteredClaimNames.Email, user.Email),
             new Claim(JwtRegisteredClaimNames.NameId, user.Id),
             new Claim("Role",role),

             };


            var token = new JwtSecurityToken(_config["Jwt:Issuer"],
                        _config["Jwt:Issuer"],
                        claims,
                        expires: DateTime.Now.AddMinutes(120),
                        signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        [NonAction]
        private async Task<Microsoft.AspNetCore.Identity.SignInResult> AuthenticateUser(string email, string password)
        {
            var user = await _userManager.FindByEmailAsync(email);
            Microsoft.AspNetCore.Identity.SignInResult result = null;

            if (!(String.IsNullOrEmpty(email) && String.IsNullOrEmpty(password)))
            {

                result = await _signInManager.CheckPasswordSignInAsync(user, password, false);
            }
            return result;
        }

    }

}
