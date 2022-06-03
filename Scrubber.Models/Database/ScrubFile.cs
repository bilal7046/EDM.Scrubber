using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class ScrubFile
    {
        public string Id { get; set; }
        public string FiltersetId { get; set; }
        public string StorageId { get; set; }
        public int NumberOfRows { get; set; }
        public DateTime CreatedAt { get; set; }
        public string CreatedBy { get; set; }
        public string IpAddress { get; set; }

        public virtual AspNetUser CreatedByNavigation { get; set; }
        public virtual Filterset Filterset { get; set; }
        public virtual SrubResult FiltersetNavigation { get; set; }
    }
}
