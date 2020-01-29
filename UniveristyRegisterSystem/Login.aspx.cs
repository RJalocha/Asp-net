using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace UniveristyRegisterSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SchoolContext"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(1) FROM tblUser WHERE username=@username and password=@password", con);
                cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                if (count==1)
                {
                    Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("dashboard.aspx");
                }
                else { lblErrorMessage.Visible = true;  }

            }
        }
    }
}