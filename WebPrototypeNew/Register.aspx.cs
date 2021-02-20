using System;
using System.Data.SqlClient;
using System.Configuration;
namespace WebPrototypeNew
{
    public partial class Register : System.Web.UI.Page
    {
        // create the data connection to the database
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string CustomerId, ArtistId;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            GenerateAccount();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlCategory.SelectedValue.Equals("Customer"))
            {
                string strAdd = "INSERT INTO Customer VALUES(@ID, @name, @phone, @address, @password)";

                SqlCommand cmdAdd = new SqlCommand(strAdd, con);

                cmdAdd.Parameters.AddWithValue("@ID", CustomerId);

                cmdAdd.Parameters.AddWithValue("@name", txtUsername.Text);

                cmdAdd.Parameters.AddWithValue("@phone", txtPhone.Text);

                cmdAdd.Parameters.AddWithValue("@address", txtAddress.Text);
                if (txtRePassword.Text.Equals(txtPassword.Text))
                {
                    cmdAdd.Parameters.AddWithValue("@password", txtPassword.Text);
                    string msg = "The account has been registered succesfully";
                    Response.Write("<script>alert('" + msg + "')</script>");
                    cmdAdd.ExecuteNonQuery();
                }
                else
                {
                    string msg = "The passwords are not the same, please re-enter again!";
                    Response.Write("<script>alert('" + msg + "')</script>");
                    txtPassword.Text = "";
                    txtRePassword.Text = "";
                }

            }
            else
            {
                string strAdd = "INSERT INTO Artist VALUES(@ID, @name, @phone, @address, @password)";

                SqlCommand cmdAdd = new SqlCommand(strAdd, con);

                cmdAdd.Parameters.AddWithValue("@ID", ArtistId);

                cmdAdd.Parameters.AddWithValue("@name", txtUsername.Text);

                cmdAdd.Parameters.AddWithValue("@phone", txtPhone.Text);

                cmdAdd.Parameters.AddWithValue("@address", txtAddress.Text);
                if (txtRePassword.Text.Equals(txtPassword.Text))
                {
                    cmdAdd.Parameters.AddWithValue("@password", txtPassword.Text);
                    string msg = "The account has been registered succesfully";
                    Response.Write("<script>alert('" + msg + "')</script>");
                    cmdAdd.ExecuteNonQuery();
                }
                else
                {
                    string msg = "The passwords are not the same, please re-enter again!";
                    Response.Write("<script>alert('" + msg + "')</script>");
                    txtPassword.Text = "";
                    txtRePassword.Text = "";
                }
            }
            con.Close();
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            if (ddlCategory.SelectedValue.Equals("Customer"))
            {
                string strAdd = "Select * From Customer Where Username=@name ";

                SqlCommand cmdAdd = new SqlCommand(strAdd, con);

                cmdAdd.Parameters.AddWithValue("@name", txtUsername.Text);
                SqlDataReader dtrProd = cmdAdd.ExecuteReader();

                if (dtrProd.HasRows)
                {
                    string msg = "Username already exist, please re-enter another username!";
                    Response.Write("<script>alert('" + msg + "')</script>");
                }

            }
            else
            {
                string strAdd = "Select * From Artist Where Username=@name ";

                SqlCommand cmdAdd = new SqlCommand(strAdd, con);

                cmdAdd.Parameters.AddWithValue("@name", txtUsername.Text);
                SqlDataReader dtrProd = cmdAdd.ExecuteReader();

                if (dtrProd.HasRows)
                {
                    string msg = "Username already exist, please re-enter another username!";
                    Response.Write("<script>alert('" + msg + "')</script>");
                }
            }
        }

        private void GenerateAccount()
        {
            if (ddlCategory.SelectedValue.Equals("Customer"))
            {
                SqlCommand cmdId = new SqlCommand("Select Count(CustomerID) FROM Customer", con);
                int i = Convert.ToInt32(cmdId.ExecuteScalar());
                i++;
                CustomerId = "C00" + i.ToString();
            }
            else
            {
                SqlCommand cmdId = new SqlCommand("Select Count(ArtistID) FROM Artist", con);
                int i = Convert.ToInt32(cmdId.ExecuteScalar());
                i++;
                ArtistId = "A00" + i.ToString();
            }
        }
    }
}