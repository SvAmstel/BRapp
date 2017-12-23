using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Default : System.Web.UI.Page
{
    private static string playerId = "938380520058974208";
    private ApiCall apiCall = new ApiCall();
    private DatabaseConnection databaseConnection = new DatabaseConnection();
    private string playerName;

    protected void Page_Load(object sender, EventArgs e)
    {
        List<Champion> championList = databaseConnection.GetChampions();

        foreach (Champion champion in championList)
        {
            TableRow row = new TableRow();
            TableCell cellName = new TableCell();
            cellName.Text = champion.championName;
            TableCell cellBio = new TableCell();
            cellBio.Text = champion.bio;
            TableCell cellImage = new TableCell();
            cellImage.Text = string.Format("<img src='" + champion.championImage + "' />");
            row.Cells.Add(cellName);
            row.Cells.Add(cellBio);
            row.Cells.Add(cellImage);
            tblChampions.Rows.Add(row);
        }
    }
}