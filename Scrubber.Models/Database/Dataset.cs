using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class Dataset
    {
        public Dataset()
        {
            FiltersetRules = new HashSet<FiltersetRule>();
        }

        public string Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int? Size { get; set; }
        public bool Protected { get; set; }
        public bool Active { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string Updatedy { get; set; }
        public string IpAddress { get; set; }

        public virtual AspNetUser CreatedByNavigation { get; set; }
        public virtual AspNetUser UpdatedyNavigation { get; set; }
        public virtual ICollection<FiltersetRule> FiltersetRules { get; set; }
    }
}
