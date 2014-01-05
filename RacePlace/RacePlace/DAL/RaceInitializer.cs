using RacePlace.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace RacePlace.DAL
{
    public class RaceInitializer : DropCreateDatabaseAlways<ApplicationDbContext>
    {
        protected override void Seed(ApplicationDbContext context)
        {
            var races = new List<Race>
            {
            new Race{RaceID=1,Name="BFAS1",Location="Ponte Vedra, FL", Date=DateTime.ParseExact("01:21:00", "hh:mm:ss", null)},

            };

            races.ForEach(r => context.Races.Add(r));
            context.SaveChanges();

            var entrants = new List<Entrants>
            {
                new Entrants{ RaceID=1, LastName="McLaughlin", FirstName="Jamie", Age=39, Division=Division.Pro, Gender=Gender.Male},
                new Entrants{ RaceID=1, LastName="Barfield", FirstName="Matt", Age=29, Division=Division.Pro, Gender=Gender.Female}

            };


            entrants.ForEach(e => context.Entrants.Add(e));
            context.SaveChanges();

            var results = new List<Result>
            {
                new Result{RaceType=RaceType.Sprint},

            };
            results.ForEach(r => context.Results.Add(r));
            context.SaveChanges();


        }
    }
}