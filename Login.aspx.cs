using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

namespace Btech_Project_2021
{
   
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Kushal"].ConnectionString);
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_admin_login",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action","Select");
            cmd.Parameters.AddWithValue("@admin_name", inputEmail.Value);
            cmd.Parameters.AddWithValue("@password", inputPassword.Value);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            
            if(dt.Rows.Count>0)
            {
                Session["userid"] = dt.Rows[0]["aid"].ToString();
                Session["a_name"] = dt.Rows[0]["username"].ToString();
                Session["IsAuth"] = "true";
                Response.Redirect("Admin.aspx");
            }
            else
            {
                label1.Text = "Login Failed";
                label1.ForeColor = Color.Red;
            }
        }
    }
}