using System;
using System.Collections.Generic;

#nullable disable

namespace EDM.Scrubber.Models.Database
{
    public partial class AspNetUser
    {
        public AspNetUser()
        {
            AspNetUserClaims = new HashSet<AspNetUserClaim>();
            AspNetUserLogins = new HashSet<AspNetUserLogin>();
            AspNetUserRoles = new HashSet<AspNetUserRole>();
            AspNetUserTokens = new HashSet<AspNetUserToken>();
            DatasetCreatedByNavigations = new HashSet<Dataset>();
            DatasetUpdatedyNavigations = new HashSet<Dataset>();
            FiltersetCreatedByNavigations = new HashSet<Filterset>();
            FiltersetRuleCreatedByNavigations = new HashSet<FiltersetRule>();
            FiltersetRuleUpdatedByNavigations = new HashSet<FiltersetRule>();
            FiltersetUpdatedByNavigations = new HashSet<Filterset>();
            ScrubFiles = new HashSet<ScrubFile>();
            UserPlans = new HashSet<UserPlan>();
        }

        public string Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string NormalizedUserName { get; set; }
        public string Email { get; set; }
        public string NormalizedEmail { get; set; }
        public bool EmailConfirmed { get; set; }
        public string PasswordHash { get; set; }
        public string SecurityStamp { get; set; }
        public string ConcurrencyStamp { get; set; }
        public string PhoneNumber { get; set; }
        public bool PhoneNumberConfirmed { get; set; }
        public bool TwoFactorEnabled { get; set; }
        public DateTimeOffset? LockoutEnd { get; set; }
        public bool LockoutEnabled { get; set; }
        public int AccessFailedCount { get; set; }

        public virtual ICollection<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual ICollection<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual ICollection<AspNetUserRole> AspNetUserRoles { get; set; }
        public virtual ICollection<AspNetUserToken> AspNetUserTokens { get; set; }
        public virtual ICollection<Dataset> DatasetCreatedByNavigations { get; set; }
        public virtual ICollection<Dataset> DatasetUpdatedyNavigations { get; set; }
        public virtual ICollection<Filterset> FiltersetCreatedByNavigations { get; set; }
        public virtual ICollection<FiltersetRule> FiltersetRuleCreatedByNavigations { get; set; }
        public virtual ICollection<FiltersetRule> FiltersetRuleUpdatedByNavigations { get; set; }
        public virtual ICollection<Filterset> FiltersetUpdatedByNavigations { get; set; }
        public virtual ICollection<ScrubFile> ScrubFiles { get; set; }
        public virtual ICollection<UserPlan> UserPlans { get; set; }
    }
}
