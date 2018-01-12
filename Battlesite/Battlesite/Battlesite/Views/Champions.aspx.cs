using Battlesite.Data;
using Battlesite.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Battlesite.Views
{
    public partial class Champions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Champion> champs = new List<Champion>();

            DatabaseConnection dc = new DatabaseConnection();
            champs = dc.Find(null);

            TableRow tr = new TableRow();
            foreach (Champion mc in champs)
            {
                tr = new TableRow();
                TableCell tcDescription = new TableCell();
                tcDescription.Text = mc.name;
                tr.Cells.Add(tcDescription);
                tblMeleeChampions.Rows.Add(tr);
            }
            
        }
    }
}