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
    private string connString = "server=localhost;uid=root;" +
           "pwd=root;database=battlerite";
    public List<Champion> GetChampions()
    {
        MySqlConnection conn = new MySqlConnection(connString);
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

    public List<Skill> GetSkillsByChampionName(string name)
    {
        MySqlConnection conn = new MySqlConnection(connString);
        List<Skill> skillList = new List<Skill>();
        try
        {
            conn.Open();
            string query = "SELECT * FROM skill where ChampionName = '" + name + "';";
            MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
            DataTable data = new DataTable();
            adapter.Fill(data);
            foreach (DataRow row in data.Rows)
            {
                Skill skill = new Skill();
                skill.skillName = (row["SkillName"]).ToString();
                skill.championName = (row["ChampionName"]).ToString();
                skill.keyBinding = (row["Keybinding"]).ToString();
                skill.description = (row["Description"]).ToString();
                skill.energyGain = Convert.ToInt32(row["EnergyGain"]);
                skill.cooldown = Convert.ToDouble(row["Cooldown"]);
                skill.energyCost = Convert.ToInt32(row["EnergyCost"]);
                skill.castTime = Convert.ToDouble(row["CastTime"]);
                skill.skillType = (row["SkillType"]).ToString();
                skill.skillImage = (row["Image"]).ToString();

                skillList.Add(skill);
            }
            return skillList;
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

    public List<BattleRite> GetBattleritesByChampionName(string name)
    {
        MySqlConnection conn = new MySqlConnection(connString);
        List<BattleRite> battleriteList = new List<BattleRite>();
        try
        {
            conn.Open();
            string query = "SELECT * FROM BattleRite where ChampionName = '" + name + "';";
            MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
            DataTable data = new DataTable();
            adapter.Fill(data);
            foreach (DataRow row in data.Rows)
            {
                BattleRite br = new BattleRite();
                br.battleRiteName = (row["BattleRiteName"]).ToString();
                br.championName = (row["ChampionName"]).ToString();
                br.description = (row["Description"]).ToString();
                br.battleRiteType = (row["BattleRiteType"]).ToString();
                br.battleRiteImage = (row["Image"]).ToString();

                battleriteList.Add(br);
            }
            return battleriteList;
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

    public Champion GetChampionByName(string name)
    {
        MySqlConnection conn = new MySqlConnection(connString);
        Champion champion = new Champion();
        try
        {
            conn.Open();
            string query = "SELECT * FROM Champion where ChampionName = '" + name + "';";
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = query;
            MySqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                champion.championImage = reader["Image"].ToString();
                champion.bio = reader["ChampionBio"].ToString();
                champion.championType = reader["ChampionType"].ToString();
                champion.championName = name;
            }
            return champion;
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