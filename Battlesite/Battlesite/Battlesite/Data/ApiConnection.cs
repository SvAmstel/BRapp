using Battlesite.Models;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;

namespace Battlesite.Data
{
    public class ApiConnection
    {
       /* private string apikey = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2MTgyMmE0MC1jMmU5LTAxMzUtOTcxMC0wYTU4NjQ2MGFhMzMiLCJpc3MiOiJnYW1lbG9ja2VyIiwiaWF0IjoxNTEzMjQ4MTM4LCJwdWIiOiJzdHVubG9jay1zdHVkaW9zIiwidGl0bGUiOiJiYXR0bGVyaXRlIiwiYXBwIjoic2ltb24tdmFuLWFtc3RlbC1nbWFpbC1jb20tcy1hcHAiLCJzY29wZSI6ImNvbW11bml0eSIsImxpbWl0IjoxMH0.B7Fmz723ic2fK-9Kx0_4ZILtb2zWVBE-3Px0YtinqVs";
        private string requestURLPlayerByName = "https://api.dc01.gamelockerapp.com/shards/global/players?filter[playerNames]=";
        private DatabaseConnection databaseConnection = new DatabaseConnection();

        public Player GetPlayerByName(string playerSearchName)
        {
            Player player = new Player();
            //Request aanmaken met de url en api key
            HttpWebRequest webRequest = HttpWebRequest.CreateHttp(requestURLPlayerByName + playerSearchName);
            webRequest.Headers.Add("Authorization", apikey);
            webRequest.Accept = "application/vnd.api+json";

            //streampje openen en responsestring opvangen
            Stream responseStream = webRequest.GetResponse().GetResponseStream();
            StreamReader streamReader = new StreamReader(responseStream);
            string responseString = streamReader.ReadToEnd();

            //responsestring in een jsonobject veranderen
            JObject json = JObject.Parse(responseString);

            player.playerName = (string)json["data"][0]["attributes"]["name"];
            player.accountLevel = Convert.ToInt32((string)json["data"][0]["attributes"]["stats"]["26"]);
            player.wins = Convert.ToInt32((string)json["data"][0]["attributes"]["stats"]["2"]);
            player.losses = Convert.ToInt32((string)json["data"][0]["attributes"]["stats"]["3"]);
            player.matchesPlayed = player.wins + player.losses;
            player.winrate = Math.Round(((double)player.wins / (double)player.matchesPlayed) * 100, 1);

            return player;
        }

        public List<Champion> GetPlayerWinrates(string playerName)
        {
            List<Champion> winrates = databaseConnection.GetChampions();

            HttpWebRequest webRequest = HttpWebRequest.CreateHttp(requestURLPlayerByName + playerName);
            webRequest.Headers.Add("Authorization", apikey);
            webRequest.Accept = "application/vnd.api+json";

            //streampje openen en responsestring opvangen
            Stream responseStream = webRequest.GetResponse().GetResponseStream();
            StreamReader streamReader = new StreamReader(responseStream);
            string responseString = streamReader.ReadToEnd();

            //responsestring in een jsonobject veranderen
            JObject json = JObject.Parse(responseString);

            int wins = 0;
            int losses = 0;
            foreach (Champion champ in winrates)
            {
                int winInt = 12000 + champ.champion_id;
                int lossInt = 13000 + champ.champion_id;
                string winString = winInt.ToString();
                string lossString = lossInt.ToString();
                if ((string)json["data"][0]["attributes"]["stats"][winString] != null)
                {
                    wins = Convert.ToInt32((string)json["data"][0]["attributes"]["stats"][winString]);
                }
                else
                {
                    wins = 0;
                }
                if ((string)json["data"][0]["attributes"]["stats"][lossString] != null)
                {
                    losses = Convert.ToInt32((string)json["data"][0]["attributes"]["stats"][lossString]);
                }
                else
                {
                    losses = 0;
                }
                int numberOfMatches = wins + losses;
                if (numberOfMatches > 0)
                {
                    champ.championWinrate = Math.Round(((double)wins / (double)numberOfMatches) * 100, 1);

                }
                else
                {
                    champ.championWinrate = 0;
                }

            }

            return winrates;
        }
        */
    }
}