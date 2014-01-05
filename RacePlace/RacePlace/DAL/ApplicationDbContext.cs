using Microsoft.AspNet.Identity.EntityFramework;
using RacePlace.Models;
using System.Data.Entity;

namespace RacePlace.DAL
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection")
        {

            //Database.SetInitializer<ApplicationDbContext>(null); 

        }

        public DbSet ApplicationUsers { get; set; }
        public DbSet Tokens { get; set; }
        public DbSet UserClaims { get; set; }
        public DbSet UserLogins { get; set; }
        public DbSet UserManagements { get; set; }
        public DbSet UserRoles { get; set; }
        public DbSet UserSecrets { get; set; }

        public DbSet<Entrants> Entrants { get; set; }
        public DbSet<Race> Races { get; set; }
        public DbSet<Result> Results { get; set; }


    }
}

