﻿using System;
using System.Windows.Forms;

namespace BRapp
{
    public partial class Form1 : Form
    {

        #region accountID's
        //Account ID Simon
        string accountNummer = "938380520058974208";
        //Account ID Rudi
        //string accountNummer = "937779406217330688";
        #endregion

        ApiCalls apiCall = new ApiCalls();
       

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            //apiCall.AccountToJson(accountNummer);
            apiCall.MatchesById(accountNummer);
        }
    }
}
