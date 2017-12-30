using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Default : System.Web.UI.Page
{
    private ApiCall ac = new ApiCall();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string playerName;
        playerName = ac.GetPlayerByName(tbxPlayerName.Text.ToString());
        tbxPlayerName.Text = "";
        lblPlayerName.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
        lblPlayerName.Text = playerName;
        lblPlayerName.Font.Size = 30;
        List<Champion> championStats = ac.GetPlayerWinrates(playerName);

        List<Champion> sortedList = championStats.OrderBy(o => o.championWinrate).ToList();
        sortedList.Reverse();
        int count = 0;
        TableRow tr = new TableRow();
        foreach (Champion champion in sortedList)
        {
            if (count == 0)
            {
                tr = new TableRow();
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect(Constants.RedirectToChampionPage + champion.championName);
                };
                ib.ImageUrl = champion.championAvatar;
                ib.ToolTip = champion.championName;
                tc.Controls.Add(ib);
                tc.Controls.Add(new LiteralControl("<br />"));
                Label lblWinrate = new Label();
                lblWinrate.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
                lblWinrate.Text = champion.championWinrate.ToString();
                tc.Controls.Add(lblWinrate);
                tr.Cells.Add(tc);
                count++;

            }
            else if (count == 4)
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect(Constants.RedirectToChampionPage + champion.championName);
                };
                ib.ImageUrl = champion.championAvatar;
                ib.ToolTip = champion.championName;
                tc.Controls.Add(ib);
                tc.Controls.Add(new LiteralControl("<br />"));
                Label lblWinrate = new Label();
                lblWinrate.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
                lblWinrate.Text = champion.championWinrate.ToString();
                tc.Controls.Add(lblWinrate);
                tr.Cells.Add(tc);
                tblWinrates.Rows.Add(tr);
                count = 0;
            }
            else
            {
                TableCell tc = new TableCell();
                ImageButton ib = new ImageButton();
                ib.Click += (s, EventArgs) =>
                {
                    Response.Redirect(Constants.RedirectToChampionPage + champion.championName);
                };
                ib.ImageUrl = champion.championAvatar;
                ib.ToolTip = champion.championName;
                tc.Controls.Add(ib);
                tc.Controls.Add(new LiteralControl("<br />"));
                Label lblWinrate = new Label();
                lblWinrate.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
                lblWinrate.Text = champion.championWinrate.ToString();
                tc.Controls.Add(lblWinrate);
                tr.Cells.Add(tc);
                count++;
            }
            tblWinrates.Rows.Add(tr);
        }

    }
}