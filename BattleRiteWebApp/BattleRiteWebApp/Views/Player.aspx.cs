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
        lblPlayerName.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
        lblPlayerName.Text = playerName;
        lblPlayerName.Font.Size = 30;
        List<Champion> championStats = ac.GetPlayerWinrates(playerName);

        List<Champion> sortedList = championStats.OrderBy(o => o.championWinrate).ToList();
        sortedList.Reverse();

        foreach (Champion champion in sortedList)
        {
            TableRow tr = new TableRow();
            
            TableCell tcChampion = new TableCell();
            //tcChampion.RowSpan = 2;
            ImageButton ib = new ImageButton();
            ib.Click += (s, EventArgs) =>
            {
                Response.Redirect("champion.aspx?name=" + champion.championName);
            };
            ib.ImageUrl = champion.championAvatar;
            ib.ToolTip = champion.championName;
            tcChampion.Controls.Add(ib);
            tcChampion.Controls.Add(new LiteralControl("<br />"));
            Label lblWinrate = new Label();
            lblWinrate.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
            lblWinrate.Text = champion.championWinrate.ToString();
            tcChampion.Controls.Add(lblWinrate);
            tr.Cells.Add(tcChampion);
            tblWinrates.Rows.Add(tr);
        }

    }
}