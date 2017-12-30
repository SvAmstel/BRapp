using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Views_Default : System.Web.UI.Page
{
    private ApiCall apiCall = new ApiCall();
    private DatabaseConnection databaseConnection = new DatabaseConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        CreateEffectTable();
    }
    private void CreateEffectTable()
    {
        List<Effect> effectList = databaseConnection.GetEffects();

        foreach (Effect effect in effectList)
        {
            TableRow tr = new TableRow();
            tr.Cells.Add(CreateEffectName(effect.EffectName));
            tr.Cells.Add(CreateDescription(effect.Description));
            tr.Cells.Add(CreateEffectType(effect.EffectType));
            tblEffects.Rows.Add(tr);
        }
    }

    private TableCell CreateEffectName(string effectName)
    {
        TableCell tcEffectName = new TableCell();
        tcEffectName.Text = effectName;
        SetStyleForCell(tcEffectName);
        return tcEffectName;
    }

    private TableCell CreateDescription(string description)
    {
        TableCell tcDescription = new TableCell();
        tcDescription.Text = description;
        SetStyleForCell(tcDescription);
        return tcDescription;
    }

    private TableCell CreateEffectType(string effectType)
    {
        TableCell tcEffectType = new TableCell();
        tcEffectType.Text = effectType;
        SetStyleForCell(tcEffectType);
        return tcEffectType;
    }

    private void SetStyleForCell(TableCell cell)
    {
        cell.Font.Size = 10;
        cell.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
    }

}