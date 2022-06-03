
using EDM.Scrubber.API.Models;
using EDM.Scrubber.Models.Database;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace UsersAndRoles
{
    public static class DefaultUsersAndRoles
    {

        public static void SeedData(UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            SeedRoles(roleManager);
            SeedUser(userManager);
            
        }

        private static void SeedRoles(RoleManager<IdentityRole> roleManager)
        {
            if (!roleManager.RoleExistsAsync("SuperAdmin").Result)
            {
                IdentityRole role = new IdentityRole()
                {
                    Name = "SuperAdmin",

                };
                var result=roleManager.CreateAsync(role).Result;
            }
            if (!roleManager.RoleExistsAsync("Admin").Result)
            {
                IdentityRole role = new IdentityRole()
                {
                    Name = "Admin",

                };
                var result = roleManager.CreateAsync(role).Result;
            }
            if (!roleManager.RoleExistsAsync("Publisher").Result)
            {
                IdentityRole role = new IdentityRole()
                {
                    Name = "Publisher",

                };
                var result = roleManager.CreateAsync(role).Result;
            }
        }

        private static void SeedUser(UserManager<ApplicationUser> userManager)
        {
            var users = new string[] { 
                "jamal@edm.com", 
                "erika@edm.com", 
                "mubsher@parallelmatrix.com" };

            foreach (var item in users)
            {
                if (userManager.FindByEmailAsync(item).Result == null)
                {
                    ApplicationUser user = new ApplicationUser()
                    {
                        FirstName = "Admin",
                        LastName = "Admin",
                        Email = item,
                        UserName = item,
                        EmailConfirmed = true,
                    };

                    var result = userManager.CreateAsync(user, "Xyz@123456").Result;

                    if (result.Succeeded)
                    {
                        userManager.AddToRoleAsync(user, "SuperAdmin").Wait();
                    }
                }
            }
        }

        
    }
}
