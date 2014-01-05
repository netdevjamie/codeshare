using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace RacePlace.Models
{

    public class Race
    {
        public int RaceID { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }

        public DateTime? StartTime { get; set; }

        public DateTime? Date { get; set; }

        public virtual ICollection<Entrants> Entrants { get; set; }
    }
}