using EDM.Scrubber.Models.DTOs;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EDM.Scrubber.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SrubFilesController : ControllerBase
    {
        public async Task<IActionResult> UploadSrubFile()
        {
            if (Request.Form.Files.Count == 0)
                return BadRequest(new Response<object>(400, "Please provide a file to scrub."));

            return Ok(new Response<dynamic>(200, "File has been uploaded")
            {
                RefObject = new List<object> {
            new {Name="Name",Code="Code",Phone="Phone"},
            new {Name="Mubsher",Code="92",Phone="312312"},
            new {Name="Bilal",Code="1",Phone="2312312"},
            new {Name="Imran Khan",Code="1",Phone="31231213"}

            }
            });
        }

        public async Task<IActionResult> ScrubFile(string phoneColumn)
        {
            return Ok(new Response<dynamic>(200, "File has been scrubbed")
            {
                RefObject = new List<object>
                {
                    new{ RuleName="Good",Records=10, FileId="fr7r64cyvhgvj" },
                    new{ RuleName="Bad",Records=20, FileId="67868" },
                    new{ RuleName="Invalid",Records=30, FileId="56767" },

                }
            });
        }
    }
}
