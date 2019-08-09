using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace testdeploy
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=tcp:testportalazure.database.windows.net,1433;Initial Catalog=AzurePortalDB;Persist Security Info=False;User ID=stany;Password=Thestanman@5;MultipleActiveResultSets=False;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False");

        protected void aanvragen(object sender, EventArgs e)
        {
            SqlCommand Selectcmd = new SqlCommand("select count(*) as nummer  from Requests where DNS = '" + DNSName.Text +"'", conn);

            conn.Open();

            string getValue = Selectcmd.CommandText;

            if (getValue == "")
            {

                string restemp = "";
                if (Nresourcegroep.Text != "")
                {
                    restemp = Nresourcegroep.Text;

                }
                else
                {

                    restemp = ResourceGroup.SelectedValue;
                }

                string Imestctquery = ("INSERT INTO Requests(Resourcetype, ResourceGroup, DNS, Memory, CPU, RecourceName, CustomerName, Customer_Email) values " +
                           "('" + VmImage.SelectedValue + "','" + restemp + "','" + DNSName.Text + "', '" + VmImage.Text + "', '" + VMSize.Text + "', '" + ResourceName.Text + "', '" + CuName.Text + "', '" + CUEmail.Text + "')");

                Response.Write(Imestctquery);


                SqlCommand cmd = new SqlCommand(Imestctquery, conn);

                conn.Open();

                cmd.ExecuteNonQuery();
                conn.Close();





            }
            else
            {
                dnsfout.Text = "DNS is niet unique";
            }
        }

        protected void DNSName_TextChanged(object sender, EventArgs e)
        {


        }

        protected void VMSize_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void VmImage_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("test");
        }
    }
}