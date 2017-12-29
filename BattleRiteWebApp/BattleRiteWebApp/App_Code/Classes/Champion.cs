using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Champion
/// </summary>
public class Champion
{
    public string championName { get; set; }
    public string championImage { get; set; }
    public string bio { get; set; }
    public string championAvatar { get; set; }
    public string championFullBody { get; set;  }
    public string championType { get; set; }
    public List<Skill> skillList { get; set; }
    public List<BattleRite> battleRiteList { get; set; }
}