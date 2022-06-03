using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class SrubResult
    {
        public SrubResult()
        {
            ScrubFiles = new HashSet<ScrubFile>();
        }

        public string Id { get; set; }
        public string ScubFileId { get; set; }
        public string RuleId { get; set; }
        public string ResultFileId { get; set; }
        public DateTime CreatedAt { get; set; }

        public virtual Storage ResultFile { get; set; }
        public virtual FiltersetRule Rule { get; set; }
        public virtual ICollection<ScrubFile> ScrubFiles { get; set; }
    }
}
