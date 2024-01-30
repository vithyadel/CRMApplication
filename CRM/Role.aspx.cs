using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {

        }

        protected void gvrole_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void BtnDelete_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void BtnEdit_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btdelete_Click(object sender, EventArgs e)
        {

        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }

        protected void Manageraccess_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Teamleaderaccess_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}