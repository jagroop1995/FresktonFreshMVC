using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FrenktonFresh.Models
{
    public class Dbclass
    {
        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-HKD1BEO\\SQLEXPRESS;Initial Catalog=FrenktonFresh;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //this statement is related to insert delete update query that is the main statement of any database record 
        public void Addcontact(String Name,String Contact, String Email, String Message)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();

            
            sqlCmd = new SqlCommand("insert into ContactTable(Name,Contact,Email,Message) values ('" + Name + "','"+Contact+"','" + Email + "','" + Message + "')", sqlConn);
            sqlCmd.ExecuteNonQuery();

            sqlConn.Close();
            
        }

        // this code is used to in the details of a prticuar query from the table using the sql statement with the help of where clause 
        public int CheckLogin(String Name, String Password)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand("select * from LoginTable where UserTxt='" + Name + "' and PasswordTxt='" + Password + "'", sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();
            if (tbl.Rows.Count > 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }

        }


    }
}