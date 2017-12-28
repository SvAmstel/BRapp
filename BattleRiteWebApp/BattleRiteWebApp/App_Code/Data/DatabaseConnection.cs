using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatabaseConnection
/// </summary>
public class DatabaseConnection
{
    public List<Champion> GetChampions()
    {
        MySqlConnection conn = new MySqlConnection("server=10.0.0.55;uid=Rudolf;" +
            "pwd=L(ll13g3s;database=battlerite");
        List<Champion> championList = new List<Champion>();
        try
        {
            conn.Open();
            MySqlDataAdapter adapter = new MySqlDataAdapter("SELECT * FROM champion", conn);
            DataTable data = new DataTable();
            adapter.Fill(data);
            foreach (DataRow row in data.Rows)
            {
                Champion champion = new Champion();
                champion.championName = (row["ChampionName"]).ToString();
                champion.bio = (row["ChampionBio"]).ToString();
                champion.championImage = (row["Image"]).ToString();
                champion.championType = (row["ChampionType"]).ToString();
                championList.Add(champion);
            }
            return championList;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }
    }
}