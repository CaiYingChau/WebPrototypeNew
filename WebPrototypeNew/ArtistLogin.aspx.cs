using System;
using System.Data.SqlClient;
using System.Configuration;

namespace WebPrototypeNew
{
    public partial class ArtistLogin : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strAdd = "Select * From Artist Where Username=@ID and Password=@Pass";

            SqlCommand cmdAdd = new SqlCommand(strAdd, con);

            cmdAdd.Parameters.AddWithValue("@ID", txtUsername.Text);
            cmdAdd.Parameters.AddWithValue("@Pass", txtPassword.Text);
            SqlDataReader dtrProd = cmdAdd.ExecuteReader();

            if (dtrProd.HasRows)
            {
                Response.Redirect("ArtistHomepage.aspx");
            }
            else
            {
                string errorMsg = "The username or password is invalid!";
                Response.Write("<script>alert('" + errorMsg + "')</script>");
            }
            con.Close();
        }
        
        }
    }