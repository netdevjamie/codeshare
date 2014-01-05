using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RacePlace.Models
{

    public enum RaceType
    {
        Ultra, HalfUltra, Olympic, Sprint
    }

    public class Result
    {
        
        public int ResultID { get; set; }
        public int EntrantsID { get; set; }
        public RaceType RaceType { get; set; }
        public DateTime? GunTime { get; set; }
        public DateTime? NetTime { get; set; }
        public DateTime? Swim { get; set; }
        public DateTime? Tran1 { get; set; }
        public DateTime? Bike { get; set; }
        public DateTime? Tran2 { get; set; }
        public DateTime? Run { get; set; }

    }
}