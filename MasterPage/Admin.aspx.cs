using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        
        protected void Validate(object sender, EventArgs e)
        {
            string FullName = txtFullName.Text;
            string Pwd = txtPwd.Text;
            if (FullName == "Revanth" && Pwd == "123321")
            {
                Response.Redirect("ListView.aspx"); //redirect to Welcome Page
            }
            else
                lblMsg.Text = "Invalid Credentials";
        }
    }
}