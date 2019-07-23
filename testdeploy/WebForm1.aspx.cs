using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testdeploy
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Source=tcp:infratest.database.windows.net,1433;Initial Catalog=infra;Persist Security Info=False;User ID=stany;Password=Thestanman@5;MultipleActiveResultSets=False;Connect Timeout=30;Encrypt=True;TrustServerCertificate=False");
           

            }

        

        protected void Resourcegroups_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}