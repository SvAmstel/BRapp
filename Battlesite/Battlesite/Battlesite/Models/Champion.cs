using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Battlesite.Models
{
    public class Champion
    {
        public int champion_id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string description { get; set; }
        public string championAvatar { get; set; }
        public string championFullBody { get; set; }
        public string type { get; set; }
        public string title { get; set; }
        public int price_coins { get; set; }
        public int price_gems { get; set; }
        public double championWinrate { get; set; }
        public List<Skill> skillList { get; set; }
        public List<Battlerite> battleRiteList { get; set; }

        public Champion(int champion_id, string name, string title, string description, string type, string image, int price_coins, int price_gems)
        {
            this.champion_id = champion_id;
            this.name = name;
            this.title = title;
            this.description = description;
            this.type = type;
            this.image = image;
            this.price_coins = price_coins;
            this.price_gems = price_gems;
        }
    }
}