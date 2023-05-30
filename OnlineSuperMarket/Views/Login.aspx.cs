using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSuperMarket.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
        }

        public static string UName = "";
        public static int User;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if(UnameTb.Value == "" ||  PasswordTb.Value == "")
            {
                ErrMsg.Text = "请输入用户名和密码";
            }
            else if(UnameTb.Value == "Admin@qq.com" && PasswordTb.Value =="zjj2003915")
            {
                Response.Redirect("Admin/Products.aspx");
            }
            else
            {
                string Query = "select * from CustomerTb1 where CustEmail = '{0}' and CustPass = '{1}'";
                Query = string.Format(Query,UnameTb.Value,PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if(dt.Rows.Count == 0) 
                {
                    ErrMsg.Text = "用户名或密码错误！";
                }
                else
                {
                    UName = UnameTb.Value;
                    User = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Customers/Billing.aspx");
                }
            }
        }

      
    }
}