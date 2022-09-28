using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["fName"] != null) 
            {
                Label1.Text = Session["fName"].ToString();
                
            }
            if (Session["Mobile"] != null)
            {
                Label3.Text = Session["Mobile"].ToString();
               
            }
            if (Session["Address"] != null)
            {
                Label4.Text = Session["Address"].ToString();
            }

            if (Session["RoomNo"] != null)
            {
                Label5.Text = Session["RoomNo"].ToString();
            }


            if (Session["bal"] != null)
            {
                Label2.Text = Session["bal"].ToString();
            }
        //    else
            //    Response.Redirect("Login.aspx");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}