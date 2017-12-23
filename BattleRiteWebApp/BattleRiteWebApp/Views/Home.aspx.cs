using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Home : System.Web.UI.Page
{
    private static string playerId = "938380520058974208";
    private ApiCall apiCall = new ApiCall();
    private string playerName;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetInfo_Click(object sender, EventArgs e)
    {
        playerName = apiCall.getPlayerName(playerId);
        lblPlayerName.Text = playerName;
    }

    protected void btnGetPlayer_Click(object sender, EventArgs e)
    {
        Player player = apiCall.getPlayer(playerId);
    }
}