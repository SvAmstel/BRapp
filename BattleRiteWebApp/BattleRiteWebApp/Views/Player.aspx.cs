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
    }
}