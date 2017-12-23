using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Home : System.Web.UI.Page
{
    private static string playerId = "938380520058974208";
    private ApiCall apiCall = new ApiCall();
    private DatabaseConnection databaseConnection = new DatabaseConnection();
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
        List<Champion> championList = databaseConnection.GetChampions();

        DataTable dt = new DataTable();
        dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ChampionName", typeof(string)),
                            new DataColumn("ChampionBio", typeof(string)),
                            new DataColumn("ChampionImage",typeof(string)) });

        foreach (Champion champion in championList)
        {
            dt.Rows.Add(champion.championName, champion.bio, champion.championImage);
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}