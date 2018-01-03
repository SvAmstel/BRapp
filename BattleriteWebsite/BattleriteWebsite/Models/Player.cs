using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BattleriteWebsite.Models
{
    public class Player
    {
        public string playerName { get; set; }

        public int accountLevel { get; set; }

        public double accountXP { get; set; }

        public double winrate { get; set; }

        public int matchesPlayed { get; set; }

        public int wins { get; set; }

        public int losses { get; set; }
    }
}