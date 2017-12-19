﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace BRapp
{
    public partial class Form1 : Form
    {
        //API en request strings
        private string apikey = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI2MTgyMmE0MC1jMmU5LTAxMzUtOTcxMC0wYTU4NjQ2MGFhMzMiLCJpc3MiOiJnYW1lbG9ja2VyIiwiaWF0IjoxNTEzMjQ4MTM4LCJwdWIiOiJzdHVubG9jay1zdHVkaW9zIiwidGl0bGUiOiJiYXR0bGVyaXRlIiwiYXBwIjoic2ltb24tdmFuLWFtc3RlbC1nbWFpbC1jb20tcy1hcHAiLCJzY29wZSI6ImNvbW11bml0eSIsImxpbWl0IjoxMH0.B7Fmz723ic2fK-9Kx0_4ZILtb2zWVBE-3Px0YtinqVs";
        private string requestURL = "https://api.dc01.gamelockerapp.com/shards/global/players/938380520058974208";

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //Request aanmaken met de url en api key
            HttpWebRequest webRequest = HttpWebRequest.CreateHttp(requestURL);
            webRequest.Headers.Add("Authorization", apikey);
            webRequest.Accept = "application/vnd.api+json";

            //streampje openen en responsestring opvangen
            Stream responseStream = webRequest.GetResponse().GetResponseStream();
            StreamReader streamReader = new StreamReader(responseStream);
            string responseString = streamReader.ReadToEnd();

            //responsestring in een jsonobject veranderen
            JObject json = JObject.Parse(responseString);

            //filestreampje openen en het jsonobject formatted naar een json file schrijven (Overwrite)
            FileStream fs = File.Open(@"C:\Users\Simon\source\repos\BRapp\info.json", FileMode.Create);
            StreamWriter sw = new StreamWriter(fs);
            JsonWriter jw = new JsonTextWriter(sw);
            {
                jw.Formatting = Formatting.Indented;

                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(jw, json);
            }
        }
    }
}
