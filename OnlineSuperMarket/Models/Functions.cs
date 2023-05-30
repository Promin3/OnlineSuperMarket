using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace OnlineSuperMarket.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand Cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string ConStr;
        public Functions()
        {
            ConStr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = C:\Users\朱俊杰\Documents\SupermarketDb.mdf; Integrated Security = True; Connect Timeout = 30";
            Con = new SqlConnection(ConStr);
            Cmd = new SqlCommand();
            Cmd.Connection = Con;
        }

        public DataTable GetData(string Query)
        {
            DataTable dt = new DataTable();
            sda= new SqlDataAdapter(Query,ConStr);
            sda.Fill(dt);
            return dt;
        }

        public int SetData(string Query)
        {
            int cnt = 0;
            if(Con.State== ConnectionState.Closed){
                Con.Open();
            }
            Cmd.CommandText = Query;
            cnt=Cmd.ExecuteNonQuery();
            Con.Close(); 
            return cnt;
        }


    }
}