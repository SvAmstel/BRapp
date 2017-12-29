using System;
using System.Collections.Generic;
using System.Drawing;
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
        Champion champion = databaseConnection.GetChampionByName(championName);
        List<Skill> skillList = databaseConnection.GetSkillsByChampionName(championName);
        List<BattleRite> battleriteList = databaseConnection.GetBattleritesByChampionName(championName);

        TableRow headerRow1 = new TableRow();
        TableRow headerRow2 = new TableRow();
        TableRow headerRow3 = new TableRow();
        TableCell tcFullImage = new TableCell();
        tcFullImage.RowSpan = 3;
        tcFullImage.Text = string.Format("<img src='" + champion.championFullBody + "' />");
        TableCell tcChampName = new TableCell();
        TableCell tcChampTitle = new TableCell();
        tcChampName.Text = champion.championName.ToUpper();
        tcChampName.Font.Size = 40;
        tcChampName.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
        tcChampTitle.Font.Size = 30;
        tcChampTitle.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
        tcChampTitle.Text = champion.championTitle;
        TableCell tcBio = new TableCell();
        tcBio.Text = champion.bio;
        tcBio.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
        headerRow1.Cells.Add(tcFullImage);
        headerRow1.Cells.Add(tcChampName);
        headerRow2.Cells.Add(tcChampTitle);
        headerRow3.Cells.Add(tcBio);

        tblHeader.Rows.Add(headerRow1);
        tblHeader.Rows.Add(headerRow2);
        tblHeader.Rows.Add(headerRow3);

        foreach (Skill skill in skillList)
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

            tcImage.Text = string.Format("<img src='"+skill.skillImage+ "'  width='64px' />");
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

            tcImage.Text = string.Format("<img src='" + br.battleRiteImage + "' width='64px' />");
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