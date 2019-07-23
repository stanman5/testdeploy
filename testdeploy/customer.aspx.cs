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
        protected void aanvragen(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=tcp:infratest.database.windows.net,1433;Initial Catalog=infra;Persist Security Info=False;User ID=stany;Password=Thestanman@5;MultipleActiveResultSets=False;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False");
            if (Nresourcegroep.Text != "")
            {
                var restemp = Nresourcegroep.Text;

            }
            else
            {

                var restemp = ResourceGroup.SelectedValue;
            }

            Response.Write("INSERT INTO Requests(ResourceImage, ResourceGroup, DNS, Memory, CPU, RecourceName, CustomerName, CustomerEmail) values " +
                       "('" + ResourceImage.SelectedValue + "','" + restemp + "','" + DNSName.Text + "', '" + Memory.Text + "', '" + Vcpu.Text + "', '" + ResourceName.Text + "', '" + CuName.Text + "', '" + CUEmail.Text + "'");

            SqlCommand Insertcmd = new SqlCommand("INSERT INTO Requests(ResourceImage, ResourceGroup, DNS, Memory, CPU, RecourceName,CustomerName, CustomerEmail) values " +
                       "('" + ResourceImage.SelectedValue + "','" + restemp + "','"  + DNSName.Text + "', '" + Memory.Text + "', '" + Vcpu.Text + "', '" + ResourceName.Text + "', '"  + CuName.Text + "', '" + CUEmail.Text +"'", conn);

            

            conn.Open();

            Insertcmd.ExecuteNonQuery(); 
        }
    }
}