using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace MasterPage
{
    public partial class GridView : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-23LCRSM\SQLEXPRESS;Initial Catalog=revanthDB;Integrated Security=True");
        SqlDataAdapter adapter = null;
        DataSet ds = null;

        protected void Page_Load(object sender, EventArgs e)
        {
           

                adapter = new SqlDataAdapter("Select * from Users", connection);
                ds = new DataSet();
                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
               

            
        }

       
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GetUersbyRoomNo(object sender, EventArgs e)
        {
            string RoomNo = txtRoom.Text;
            adapter = new SqlDataAdapter($"Select * from Users where RoomNo='{RoomNo}'", connection);
            ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GetUsersbyRoomNo(object sender, EventArgs e)
        {

        }
    }
}