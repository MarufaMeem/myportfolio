using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace work1
{
    public partial class login : System.Web.UI.Page
    {


        string strcon = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e) 
        {

            HttpCookie cookie = new HttpCookie("login");

            cookie["username"] = username.Text;
            cookie["password"] = password.Text;

            cookie.Expires = DateTime.Now.AddDays(7);

            Response.Cookies.Add(cookie);





            try 
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    string user = username.Text;
                    string pass = password.Text;

                    con.Open();

                    string qry = "select userid from login where userid='" + user + "' and passid='" + pass + "'";
                    SqlCommand cmd = new SqlCommand(qry, con);

                    SqlDataReader srd = cmd.ExecuteReader();
                    if(srd.Read())
                    {
                        Response.Redirect("adminpanel.aspx");
                    }
                    else
                    {
                        error.Text = "username/password not found";
                    }
                    con.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('exception')</script>");
            }
           
        }
    }
}