using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MasterPage.Entities;

namespace MasterPage
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["revanthDBConnectionString"].ConnectionString);
        SqlCommand command = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registeruser(object sender, EventArgs e)
        {
            try
            {
                Users user = new Users();
                user.FullName = txtFullName.Text;
                user.ParentName = txtParentName.Text;
                user.Gender = rb1.Checked ? "Male" : rb2.Checked ? "Female" : "Unknown";
                user.Age = int.Parse(txtAge.Text);

                user.Email = txtEmail.Text;
                user.Mobile = txtMobile.Text;
                user.Address = txtAddress.Text;
                user.RoomNo = int.Parse(txtroom.Text);
;                user.Password = txtPwd.Text;
                user.Balance =txtBalance.Text;


                //Add User detials to user table
                string qry = $"Insert into Users values('{user.FullName}','{user.ParentName}','{user.Gender}'," +
                    $"{user.Age},'{user.Email}','{user.Mobile}','{user.Address}','{user.RoomNo}','{user.Password}','{user.Balance}')";
                command = new SqlCommand(qry, connection);
                connection.Open();
                command.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {

                lblmsg.Text = ex.Message;
            }
            finally
            {
                connection.Close();
            }

        }

        protected void txtParentName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}