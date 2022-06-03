using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class UserPlan
    {
        public string Id { get; set; }
        public string UserId { get; set; }
        public string PlanId { get; set; }
        public bool Active { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string IpAddress { get; set; }

        public virtual SrubPlan Plan { get; set; }
        public virtual AspNetUser User { get; set; }
    }
}
