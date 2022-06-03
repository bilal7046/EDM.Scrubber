using EDM.Scrubber.Models.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EDM.Scrubber.API.Controllers
{
    [Route("error/{code}")]
    [ApiController]
    public class ErrorsController : ControllerBase
    {
        [HttpGet,HttpPost]
        public IActionResult Error(int code)
        {
            return new ObjectResult(new Response<object>(code));
        }
    }
}
