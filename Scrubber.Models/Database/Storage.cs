using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class Storage
    {
        public Storage()
        {
            SrubResults = new HashSet<SrubResult>();
        }

        public string Id { get; set; }
        public string Path { get; set; }
        public string FileName { get; set; }
        public string FileExt { get; set; }
        public string EncKey { get; set; }
        public string PublicIdentifier { get; set; }
        public string PublicId { get; set; }
        public string MimeType { get; set; }
        public string FileSize { get; set; }

        public virtual ICollection<SrubResult> SrubResults { get; set; }
    }
}
