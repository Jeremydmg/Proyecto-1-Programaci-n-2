using System;
using System.Web.UI;

namespace Proyecto1
{
    public partial class Calculadora : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display.Text = "0";
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            var button = (System.Web.UI.WebControls.Button)sender;
            var value = button.Text;

            if (value == "C")
            {
                display.Text = "0";
            }
            else if (value == "=")
            {
                try
                {
                    var result = new System.Data.DataTable().Compute(display.Text.Replace("x", "*"), null);
                    display.Text = result.ToString();
                }
                catch
                {
                    display.Text = "Error";
                }
            }
            else
            {
                if (display.Text == "0")
                {
                    display.Text = value;
                }
                else
                {
                    display.Text += value;
                }
            }
        }
    }
}
