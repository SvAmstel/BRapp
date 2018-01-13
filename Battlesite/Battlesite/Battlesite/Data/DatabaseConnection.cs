using Battlesite.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Compilation;

namespace Battlesite.Data
{
    public class DatabaseConnection
    {
        private string connString = "server=188.226.195.65;uid=HenkHerberts;" +
         "pwd=rkJaQJ1WBg;database=Battlerite";
        
        /// <summary>
        /// Finds all records from the Champion table that match the filters
        /// Send null to find all
        /// </summary>
        /// <param name="filters">List of filter requirements where the key is the fieldname in the database</param>
        /// <returns></returns>
        public List<Champion> FindChampions(Dictionary<string, string> filters)
        {
            List<Champion> resultlist = new List<Champion>();
            string query = BuildFindQuery("Champion", filters);            
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                conn.Open();
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
                DataTable data = new DataTable();
                adapter.Fill(data);
                
                foreach (DataRow row in data.Rows)
                {
                    int champion_id = Convert.ToInt32(row["champion_id"]);
                    String name = row["name"].ToString();
                    String title = row["title"].ToString();
                    String description = row["description"].ToString();
                    String type = row["type"].ToString();
                    String image = row["image"].ToString();
                    int price_coins = Convert.ToInt32(row["price_coins"]);
                    int price_gems = Convert.ToInt32(row["price_gems"]);

                    Champion champion = new Champion(champion_id,name,title,description,type,image,price_coins,price_gems);
                    resultlist.Add(champion);
                }               
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
            return resultlist;
        }

        /// <summary>
        /// Finds all records from the Skill table that match the filters
        /// Send null to find all
        /// </summary>
        /// <param name="filters">List of filter requirements where the key is the fieldname in the database</param>
        /// <returns></returns>
        public List<Skill> FindSkills(Dictionary<string, string> filters)
        {
            List<Skill> resultlist = new List<Skill>();
            string query = BuildFindQuery("Skill", filters);
            MySqlConnection conn = new MySqlConnection(connString);
            try
            {
                conn.Open();
                MySqlDataAdapter adapter = new MySqlDataAdapter(query, conn);
                DataTable data = new DataTable();
                adapter.Fill(data);

                foreach (DataRow row in data.Rows)
                {
                    /*int champion_id = Convert.ToInt32(row["champion_id"]);
                    String name = row["name"].ToString();
                    String title = row["title"].ToString();
                    String description = row["description"].ToString();
                    String type = row["type"].ToString();
                    String image = row["image"].ToString();
                    int price_coins = Convert.ToInt32(row["price_coins"]);
                    int price_gems = Convert.ToInt32(row["price_gems"]);

                    Champion champion = new Champion(champion_id, name, title, description, type, image, price_coins, price_gems);
                    resultlist.Add(champion);*/
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
            return resultlist;
        }

        private String BuildFindQuery(string table, Dictionary<string, string> filters)
        {
            string query;
            if (filters == null)
            {
                query = "SELECT * FROM " +table +" WHERE online = 1";
            }
            else
            {
                query = "SELECT * FROM " + table + " WHERE ";
                int count = 0;
                foreach (KeyValuePair<string, string> entry in filters)
                {
                    if (count == 0)
                    {
                        query += entry.Key + " = " + entry.Value;
                    }
                    else
                    {
                        query += " AND " + entry.Key + " = " + entry.Value;
                    }
                    count++;
                }
                query += " AND online = 1";
            }
            return query;
        }
    }
}
