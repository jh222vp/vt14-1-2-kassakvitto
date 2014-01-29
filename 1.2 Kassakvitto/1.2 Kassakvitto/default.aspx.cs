using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _1._2_Kassakvitto.Model;

namespace _1._2_Kassakvitto
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            totalBuySum.Focus();
            
        }

        protected void CalcSale_Click(object sender, EventArgs e)
        {
            var receipt = new Receipt(double.Parse(totalBuySum.Text));
            outSum.Visible = true;
            totalSum.Text = String.Format("Totalsumma: {0:c}", totalBuySum.Text);
            percent.Text = String.Format("Antal procent i rabatt: {0:p}", receipt.DiscountRate);
            discount.Text = String.Format("Rabatt: {0:c}", receipt.MoneyOff);
            sumAfterDiscount.Text = String.Format("Att betala: {0:c}", receipt.Total);
            
        }
    }
}