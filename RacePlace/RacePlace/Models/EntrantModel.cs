using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace RacePlace.Models
{

    public enum Gender
    {
        Male, Female
    }

    public enum Division
    {
        Pro, Elite, AgeGroup, Clydesdale, Athena
    }

    public class Entrants
    {
        public int EntrantsID { get; set; }
        public int RaceID { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleInitial { get; set; }
        public int Age { get; set; }
        public Gender? Gender { get; set; }
        public Division Division { get; set; }

        public virtual Race Race { get; set; }

    }
}