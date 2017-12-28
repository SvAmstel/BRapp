using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_champion : System.Web.UI.Page
{
    private DatabaseConnection databaseConnection = new DatabaseConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetDefaultView();
        }

        string championName = Request["name"];
        List<Skill> skillList = databaseConnection.GetSkillsByChampionName(championName);
        List<BattleRite> battleriteList = databaseConnection.GetBattleritesByChampionName(championName);
        lblChampName.Text = championName;

        foreach(Skill skill in skillList)
        {
            TableRow tr = new TableRow();
            TableCell tcImage = new TableCell();
            TableCell tcName = new TableCell();
            TableCell tcKeybinding = new TableCell();
            TableCell tcDescription = new TableCell();
            TableCell tcEnergyGain = new TableCell();
            TableCell tcEnergyCost = new TableCell();
            TableCell tcCooldown = new TableCell();
            TableCell tcCasttime = new TableCell();
            TableCell tcSkillType = new TableCell();
            
            tcImage.Text = string.Format("<img src='"+skill.skillImage+"' />");
            tr.Cells.Add(tcImage);
            tcName.Text = skill.skillName;
            tr.Cells.Add(tcName);
            tcKeybinding.Text = skill.keyBinding;
            tr.Cells.Add(tcKeybinding);
            tcDescription.Text = skill.description;
            tr.Cells.Add(tcDescription);
            tcEnergyGain.Text = skill.energyGain.ToString();
            tr.Cells.Add(tcEnergyGain);
            tcEnergyCost.Text = skill.energyCost.ToString();
            tr.Cells.Add(tcEnergyCost);
            tcCooldown.Text = skill.cooldown.ToString();
            tr.Cells.Add(tcCooldown);
            tcCasttime.Text = skill.castTime.ToString();
            tr.Cells.Add(tcCasttime);
            tcSkillType.Text = skill.skillType;
            tr.Cells.Add(tcSkillType);

            tblSkills.Rows.Add(tr);
        }

        foreach (BattleRite br in battleriteList)
        {
            TableRow tr = new TableRow();
            TableCell tcImage = new TableCell();
            TableCell tcName = new TableCell();
            TableCell tcDescription = new TableCell();
            TableCell tcBattleriteType = new TableCell();

            tcImage.Text = string.Format("<img src='" + br.battleRiteImage + "' />");
            tr.Cells.Add(tcImage);
            tcName.Text = br.battleRiteName;
            tr.Cells.Add(tcName);
            tcDescription.Text = br.description;
            tr.Cells.Add(tcDescription);
            tcBattleriteType.Text = br.battleRiteType;
            tr.Cells.Add(tcBattleriteType);

            tblBattlerites.Rows.Add(tr);
        }
    }

    private void SetDefaultView()
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void lnkTab1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void lnkTab2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
}