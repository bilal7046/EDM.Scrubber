using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class Filterset
    {
        public Filterset()
        {
            FiltersetRules = new HashSet<FiltersetRule>();
            ScrubFiles = new HashSet<ScrubFile>();
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool Active { get; set; }
        public string CreatedAt { get; set; }
        public string UpdatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string IpAddress { get; set; }

        public virtual AspNetUser CreatedByNavigation { get; set; }
        public virtual AspNetUser UpdatedByNavigation { get; set; }
        public virtual ICollection<FiltersetRule> FiltersetRules { get; set; }
        public virtual ICollection<ScrubFile> ScrubFiles { get; set; }
    }
}
