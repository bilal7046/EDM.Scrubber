using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class SrubPlan
    {
        public SrubPlan()
        {
            UserPlans = new HashSet<UserPlan>();
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public int PlanType { get; set; }
        public int PlanLimit { get; set; }
        public string Description { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string IpAddress { get; set; }

        public virtual ICollection<UserPlan> UserPlans { get; set; }
    }
}
