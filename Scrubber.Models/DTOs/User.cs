using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EDM.Scrubber.Models.DTOs
{
    public class User
    {
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string UserName { get; set; }
        [Required]
        public string Password { get; set; }
        [Compare(nameof(Password),ErrorMessage ="Password mismatch")]
        public string ConfirmPassword { get; set; }
    }
    public class Login
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
     
        [Required]
        public string Password { get; set; }
     
    }
}
