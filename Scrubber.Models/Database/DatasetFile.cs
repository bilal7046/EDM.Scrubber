using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class DatasetFile
    {
        public string DatasetId { get; set; }
        public string StorageId { get; set; }
        public DateTime CreatedAt { get; set; }
        public string CreatedBy { get; set; }

        public virtual AspNetUser CreatedByNavigation { get; set; }
        public virtual Dataset Dataset { get; set; }
        public virtual Storage Storage { get; set; }
    }
}
