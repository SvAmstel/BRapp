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
        List<Effect> effectList = databaseConnection.GetEffects();

        TableRow tr = new TableRow();
        foreach (Effect effect in effectList)
        {

            tr = new TableRow();
            TableCell tcEffectName = new TableCell();
            tcEffectName.Text = effect.EffectName.ToUpper();
            tcEffectName.Font.Size = 10;
            tcEffectName.ForeColor = System.Drawing.ColorTranslator.FromHtml("#F07C28");
            tr.Cells.Add(tcEffectName);
            tblEffects.Rows.Add(tr);
        }       
    }
}