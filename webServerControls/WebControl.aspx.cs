using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectFee;

namespace webServerControls
{
    public partial class WebControl : System.Web.UI.Page
    {
        public decimal BasePrice = 100.00m;

        protected void Page_Load(object sender, EventArgs e)
        {
            ltBasePrice.Text = BasePrice.ToString("C");
        }

        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            States state = new States();
            decimal fee = state.GetFeeForState(DropDownList1.SelectedValue);
            decimal finalPrice = BasePrice + fee;
            Literal1.Text = finalPrice.ToString("C");

        }
    }
}