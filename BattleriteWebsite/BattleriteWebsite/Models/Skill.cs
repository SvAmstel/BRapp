using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BattleriteWebsite.Models
{
    public class Skill
    {
        public string skillName { get; set; }
        public string championName { get; set; }
        public string keyBinding { get; set; }
        public string description { get; set; }
        public int energyGain { get; set; }
        public double cooldown { get; set; }
        public int energyCost { get; set; }
        public double castTime { get; set; }
        public string skillType { get; set; }
        public string skillImage { get; set; }
    }
}