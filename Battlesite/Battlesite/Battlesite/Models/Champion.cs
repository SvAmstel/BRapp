using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Battlesite.Models
{
    public class Champion : DBO
    {
        public int champion_id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string description { get; set; }
        public string championAvatar { get; set; }
        public string championFullBody { get; set; }
        public string championType { get; set; }
        public string championTitle { get; set; }
        public double championWinrate { get; set; }
        public List<Skill> skillList { get; set; }
        public List<Battlerite> battleRiteList { get; set; }
    }
}