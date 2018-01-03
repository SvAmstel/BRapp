using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BattleriteWebsite.Models
{
    public class Champion
    {
        public string championName { get; set; }
        public string championImage { get; set; }
        public string bio { get; set; }
        public string championAvatar { get; set; }
        public string championFullBody { get; set; }
        public string championType { get; set; }
        public string championTitle { get; set; }
        public double championWinrate { get; set; }
        public int championDevNumber { get; set; }
        public List<Skill> skillList { get; set; }
        public List<BattleRite> battleRiteList { get; set; }
    }
}