using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Battlesite.Models
{
    public class Match
    {
        public int matchId { get; set; }
        public List<Player> playerList { get; set; }
    }
}