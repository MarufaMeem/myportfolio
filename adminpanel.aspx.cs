using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace work1
{
    public partial class adminpanel : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            HttpCookie cookie = Request.Cookies["login"];

            if (cookie != null)
                Label1.Text = cookie["username"].ToString();


            if (!IsPostBack)
            {
                BindServices();
                BindSocialMedia();
                BindCounts();
                DisplayTotalCount();
                DisplayTotalServiceCount();
                DisplayTotalSocialMediaCount();
                BindGridView();
            }
        }

        // Method to bind services data to GridView
        protected void BindServices()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM service", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvServices.DataSource = dt;
                    gvServices.DataBind();
                }
            }
        }

        protected void InsertService(object sender, EventArgs e)
        {
            string serviceId = txtserviceId.Text;
            string title = txtTitle.Text;
            string icon = txtIcon.Text;
            string description = txtDescription.Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO service (title, icon, p,serviceId) VALUES (@Title, @Icon, @Description,@serviceid)", con))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@serviceid", serviceId);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindServices();
        }

        protected void EditService(object sender, GridViewEditEventArgs e)
        {
            gvServices.EditIndex = e.NewEditIndex;
            BindServices();
        }

        protected void CancelEditService(object sender, GridViewCancelEditEventArgs e)
        {
            gvServices.EditIndex = -1;
            BindServices();
        }

        protected void UpdateService(object sender, GridViewUpdateEventArgs e)
        {
            string serviceId = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditserviceId")).Text;
            string title = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditTitle")).Text;
            string icon = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditIcon")).Text;
            string description = ((TextBox)gvServices.Rows[e.RowIndex].FindControl("txtEditDescription")).Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE service SET title = @Title, icon = @Icon, p = @Description WHERE serviceId = @ServiceId", con))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Description",description);
                    cmd.Parameters.AddWithValue("@ServiceId", serviceId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvServices.EditIndex = -1;
            BindServices();
        }

        protected void DeleteService(object sender, GridViewDeleteEventArgs e)
        {
            // Check if the DataKeys value is DBNull before converting it
            if (gvServices.DataKeys[e.RowIndex].Value != DBNull.Value)
            {
                int serviceId = Convert.ToInt32(gvServices.DataKeys[e.RowIndex].Value);

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM service WHERE serviceId = @ServiceId", con))
                    {
                        cmd.Parameters.AddWithValue("@ServiceId", serviceId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                       
                    }
                }
            }
            else
            {
                // Handle the case where DataKeys value is DBNull
                // For example, you can log an error message or display a user-friendly message
                Response.Write("<script>alert('Exception')</script>");
            }

            BindServices();
        }


        protected void BindSocialMedia()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Table_2", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvSocialMedia.DataSource = dt;
                    gvSocialMedia.DataBind();
                }
            }
        }

        protected void InsertSocialMedia(object sender, EventArgs e)
        {
            string link = txtLink.Text;
            string icon = txtIcon.Text;
            string style = txtStyle.Text;
            string id = txtid.Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO  Table_2(link, icon, style,id) VALUES (@Link, @Icon, @Style,@Id)", con))
                {
                    cmd.Parameters.AddWithValue("@Link", link);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Style", style);
                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindSocialMedia();
        }

        protected void EditSocialMedia(object sender, GridViewEditEventArgs e)
        {
            gvSocialMedia.EditIndex = e.NewEditIndex;
            BindSocialMedia();
        }

        protected void CancelEditSocialMedia(object sender, GridViewCancelEditEventArgs e)
        {
            gvSocialMedia.EditIndex = -1;
            BindSocialMedia();
        }

        protected void UpdateSocialMedia(object sender, GridViewUpdateEventArgs e)
        {
            string id = ((TextBox)gvSocialMedia.Rows[e.RowIndex].FindControl("txtEditid")).Text;
            string link = ((TextBox)gvSocialMedia.Rows[e.RowIndex].FindControl("txtEditLink")).Text;
            string icon = ((TextBox)gvSocialMedia.Rows[e.RowIndex].FindControl("txtEditIcon")).Text;
            string style = ((TextBox)gvSocialMedia.Rows[e.RowIndex].FindControl("txtEditStyle")).Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Table_2 SET link = @Link, icon = @Icon, style = @Style WHERE id = @Id", con))
                {
                    cmd.Parameters.AddWithValue("@Link", link);
                    cmd.Parameters.AddWithValue("@Icon", icon);
                    cmd.Parameters.AddWithValue("@Style", style);
                    cmd.Parameters.AddWithValue("@Id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvSocialMedia.EditIndex = -1;
            BindSocialMedia();
        }

        protected void DeleteSocialMedia(object sender, GridViewDeleteEventArgs e)
        {
            if (gvSocialMedia.DataKeys[e.RowIndex].Value != DBNull.Value)
            {
                int id = Convert.ToInt32(gvSocialMedia.DataKeys[e.RowIndex].Value);

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM Table_2 WHERE id = @Id", con))
                    {
                        cmd.Parameters.AddWithValue("@Id", id);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            else
            {
                // Handle the case where DataKeys value is DBNull
                // For example, you can log an error message or display a user-friendly message
                Response.Write("<script>alert('Exception')</script>");
            }

            BindSocialMedia();
        }







        protected void BindCounts()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM counts", con))
                {
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    gvCounts.DataSource = dt;
                    gvCounts.DataBind();
                }
            }
        }

        protected void InsertCount(object sender, EventArgs e)
        {
            string counticon = txtcounticon.Text;
            string dataVal = txtDataVal.Text;
            string p = txtP.Text;
            string countId = textID.Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO counts (counticon, dataval, p, countId) VALUES (@CountIcon, @DataVal, @P, @ID)", con))
                {
                    cmd.Parameters.AddWithValue("@CountIcon", counticon);
                    cmd.Parameters.AddWithValue("@DataVal", dataVal);
                    cmd.Parameters.AddWithValue("@P", p);
                    cmd.Parameters.AddWithValue("@ID", countId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindCounts();
        }

        protected void EditCount(object sender, GridViewEditEventArgs e)
        {
            gvCounts.EditIndex = e.NewEditIndex;
            BindCounts();
        }

        protected void CancelEditCount(object sender, GridViewCancelEditEventArgs e)
        {
            gvCounts.EditIndex = -1;
            BindCounts();
        }

        protected void UpdateCount(object sender, GridViewUpdateEventArgs e)
        {
            string countId = ((TextBox)gvCounts.Rows[e.RowIndex].FindControl("txtEditcountId")).Text;
            string counticon = ((TextBox)gvCounts.Rows[e.RowIndex].FindControl("txtEditcountIcon")).Text;
            string dataVal = ((TextBox)gvCounts.Rows[e.RowIndex].FindControl("txtEditDataVal")).Text;
            string p = ((TextBox)gvCounts.Rows[e.RowIndex].FindControl("txtEditP")).Text;

            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE counts SET counticon = @CountIcon, dataval = @DataVal, p = @P WHERE countId = @CountID", con))
                {
                    cmd.Parameters.AddWithValue("@CountIcon", counticon);
                    cmd.Parameters.AddWithValue("@DataVal", dataVal);
                    cmd.Parameters.AddWithValue("@P", p);
                    cmd.Parameters.AddWithValue("@CountID", countId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvCounts.EditIndex = -1;
            BindCounts();
        }


        protected void DeleteCount(object sender, GridViewDeleteEventArgs e)
        {
            if (gvCounts.DataKeys[e.RowIndex].Value != DBNull.Value)
            {
                int countId = Convert.ToInt32(gvCounts.DataKeys[e.RowIndex].Value);

                using (SqlConnection con = new SqlConnection(strcon))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM counts WHERE countId = @CountId", con))
                    {
                        cmd.Parameters.AddWithValue("@CountId", countId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            else
            {
                // Handle the case where DataKeys value is DBNull
                // For example, you can log an error message or display a user-friendly message
                Response.Write("<script>alert('Exception')</script>");
            }

            BindCounts();
        }


        private void DisplayTotalCount()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM counts", con))
                {
                    con.Open();
                    int totalCount = (int)cmd.ExecuteScalar(); // Retrieve the total count
                    lblTotalCount.Text = totalCount.ToString(); // Display the total count on the dashboard
                }
            }
        }



        private void DisplayTotalServiceCount()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM service", con))
                {
                    con.Open();
                    int totalServiceCount = (int)cmd.ExecuteScalar(); // Retrieve the total service count
                    lblTotalServiceCount.Text = totalServiceCount.ToString(); // Display the total service count on the dashboard
                }
            }
        }

        // Method to retrieve and display the total social media count
        private void DisplayTotalSocialMediaCount()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Table_2", con))
                {
                    con.Open();
                    int totalSocialMediaCount = (int)cmd.ExecuteScalar(); // Retrieve the total social media count
                    lblTotalSocialMediaCount.Text = totalSocialMediaCount.ToString(); // Display the total social media count on the dashboard
                }
            }
        }


        private void BindGridView()
        {
            string query = "SELECT name, email, msg FROM Table_1";

            using (SqlConnection connection = new SqlConnection(strcon))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    GridViewContacts.DataSource = dataTable;
                    GridViewContacts.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}