using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Views_Default : System.Web.UI.Page
{
    //private static string playerId = "938380520058974208";
    private ApiCall apiCall = new ApiCall();
    private DatabaseConnection databaseConnection = new DatabaseConnection();
    //private string playerName;

    protected void Page_Load(object sender, EventArgs e)
    {
        List<Champion> championList = databaseConnection.GetChampions();

        ArrayList meleeChamps = new ArrayList();
        ArrayList rangedChamps = new ArrayList();
        ArrayList supportChamps = new ArrayList();

        foreach (Champion champion in championList)
        {
            if (champion.championType == "Melee")
            {
                meleeChamps.Add(champion);
            }

            if (champion.championType == "Ranged")
            {
                rangedChamps.Add(champion);
            }

            if (champion.championType == "Support")
            {
                supportChamps.Add(champion);
            }
        }
        int count = 0;
        TableRow tr = new TableRow();
        foreach (Champion mc in meleeChamps)
        {
            if (count == 0)
            {
                tr = new TableRow();
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + mc.championName);
                };
                ib.ImageUrl = mc.championImage;
                ib.ToolTip = mc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;

            }
            else if (count == 4)
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + mc.championName);
                };
                ib.ImageUrl = mc.championImage;
                ib.ToolTip = mc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                tblMeleeChampions.Rows.Add(tr);
                count = 0;
            }
            else
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + mc.championName);
                };
                ib.ImageUrl = mc.championImage;
                ib.ToolTip = mc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;
            }
        }
        tblMeleeChampions.Rows.Add(tr);
        count = 0;

        foreach (Champion rc in rangedChamps)
        {
            if (count == 0)
            {
                tr = new TableRow();
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + rc.championName);
                };
                ib.ImageUrl = rc.championImage;
                ib.ToolTip = rc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;

            }
            else if (count == 4)
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + rc.championName);
                };
                ib.ImageUrl = rc.championImage;
                ib.ToolTip = rc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                tblRangedChampions.Rows.Add(tr);
                count = 0;
            }
            else
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + rc.championName);
                };
                ib.ImageUrl = rc.championImage;
                ib.ToolTip = rc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;
            }
        }
        tblRangedChampions.Rows.Add(tr);
        count = 0;

        foreach (Champion sc in supportChamps)
        {
            if (count == 0)
            {
                tr = new TableRow();
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + sc.championName);
                };
                ib.ImageUrl = sc.championImage;
                ib.ToolTip = sc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;

            }
            else if (count == 4)
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + sc.championName);
                };
                ib.ImageUrl = sc.championImage;
                ib.ToolTip = sc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                tblSupportChampions.Rows.Add(tr);
                count = 0;
            }
            else
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect("champion.aspx?name=" + sc.championName);
                };
                ib.ImageUrl = sc.championImage;
                ib.ToolTip = sc.championName;
                tc.Controls.Add(ib);
                tr.Cells.Add(tc);
                count++;
            }
        }
        tblSupportChampions.Rows.Add(tr);
    }
}
