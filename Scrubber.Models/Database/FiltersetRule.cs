using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class FiltersetRule
    {
        public FiltersetRule()
        {
            SrubResults = new HashSet<SrubResult>();
        }

        public string Id { get; set; }
        public string FiltersetId { get; set; }
        public string DatasetId { get; set; }
        public string RuleName { get; set; }
        public int Priority { get; set; }
        public int Condition { get; set; }
        public int? FileGenerated { get; set; }
        public bool Active { get; set; }
        public bool StopProcessing { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public string IpAddress { get; set; }

        public virtual AspNetUser CreatedByNavigation { get; set; }
        public virtual Dataset Dataset { get; set; }
        public virtual Filterset Filterset { get; set; }
        public virtual AspNetUser UpdatedByNavigation { get; set; }
        public virtual ICollection<SrubResult> SrubResults { get; set; }
    }
}
