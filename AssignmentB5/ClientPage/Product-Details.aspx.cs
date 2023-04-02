using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AssignmentB5.ClientPage
{
    public partial class Product_Details : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand command;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                command = new SqlCommand("SELECT * FROM Product WHERE prodId = @prodId", conn);
                command.Parameters.AddWithValue("@prodId", Request.QueryString["prodId"]);

                conn.Open();
                SqlDataReader product = command.ExecuteReader();
                while (product.Read())
                {

                    // if not category data is less than 5, combine with others
                    prodname.InnerText = product["prodName"].ToString();
                    prodDesc.InnerText = product["prodDesc"].ToString();
                    prodPrice.InnerText = product["prodPrice"].ToString();
                    prodCategory.InnerText = product["prodCategory"].ToString();
                    quantity.Attributes.Add("max", product["prodQuantity"].ToString());
                    SqlDataSource2.SelectCommand = "SELECT TOP(5)* FROM Product WHERE prodCategory = @prodCategory AND prodId != @prodId";
                    SqlDataSource2.SelectParameters.Add("prodCategory", product["prodCategory"].ToString());
                    SqlDataSource2.SelectParameters.Add("prodId", product["prodId"].ToString());
                    rptSuggestion.DataSource = SqlDataSource2;
                    rptSuggestion.DataBind();
                }
                conn.Close();
            }

            
        }

        protected void rptSuggestion_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "detail")
            {
                Response.Redirect(HttpContext.Current.Request.ApplicationPath + "ClientPage/Product-Details.aspx?prodId=" + e.CommandArgument.ToString());
            }
        }
    }
}