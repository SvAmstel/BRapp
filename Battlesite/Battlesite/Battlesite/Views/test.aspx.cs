using Battlesite.Data;
using Battlesite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Battlesite.Views
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void testknopje_Click(object sender, EventArgs e)
        {
            DatabaseConnection dbconn = new DatabaseConnection();
            Dictionary<string, string> hash = new Dictionary<string,string>();
            hash.Add("champion_id","1");
            List<DBO> champs = new List<DBO>();
            champs = dbconn.Find("champion",hash);
        }
    }
}