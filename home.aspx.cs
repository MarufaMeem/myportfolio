using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace work1
{
    public partial class home : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSocialLinks();
               
            }

        }

        protected void adminbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }
        protected void LoadSocialLinks()
        {

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("SELECT icon, title, p FROM service", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    con.Open();
                    da.Fill(dt);

                    ServiceRepeater.DataSource = dt;
                    ServiceRepeater.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                Response.Write("<script>alert('Exception : " + ex.Message + "')</script>");
            }


            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("SELECT icon, data_val,p FROM counts", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    con.Open();
                    da.Fill(dt);

                    CountsRepeater.DataSource = dt;
                    CountsRepeater.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                Response.Write("<script>alert('Exception : " + ex.Message + "')</script>");
            }

            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    SqlCommand cmd = new SqlCommand("SELECT Link, Icon, Style FROM Table_2", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    con.Open();
                    da.Fill(dt);

                    SocialLinksRepeater.DataSource = dt;
                    SocialLinksRepeater.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                Response.Write("<script>alert('Exception : " + ex.Message + "')</script>");
            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlCommand com = new SqlCommand("insert into table_1([name],[email],[msg]) values(@name,@email,@msg)", con);

                com.Parameters.AddWithValue("@name", name.Text.Trim());
                com.Parameters.AddWithValue("@email", email.Text.Trim());
                com.Parameters.AddWithValue("@msg", msg.Text.Trim());

                com.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('Successfully added!')</script>");


            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('Exception : "+ ex.Message +"')</script>");
            }          
        }

        protected void Unnamed2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}