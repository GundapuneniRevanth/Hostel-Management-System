using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MasterPage
{
    public partial class Login : System.Web.UI.Page

    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["revanthDBConnectionString"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Validate(object sender, EventArgs e)
        {
            string FullName = txtFullName.Text;
            string pwd = txtPwd.Text;
            int userId = 0;
            string qry = $"Select * from Users where FullName='{FullName}' and password='{pwd}'";
            command = new SqlCommand(qry, connection);
            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.HasRows)
            {
                if (sqlDataReader.Read()) {
                    userId = sqlDataReader.GetInt32(0);
                    Session["bal"] = sqlDataReader.GetString(10);
                    Session["Mobile"] = sqlDataReader.GetString(6);
                    Session["Address"] = sqlDataReader.GetString(7);
                    Session["RoomNo"] = sqlDataReader.GetString(8);
                }
                Session["fName"] = FullName;
                if (userId == 17) {
                    lblMsg.Text = "Please Login on Admin page";
                } else {
                    Response.Redirect("Welcome.aspx");

                }
            }
            else
            {
                lblMsg.Text = "Invalid Credentials";
            }

        }
       
    }
    }    