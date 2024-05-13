﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace BlogWeb
{
    public partial class GirisYap : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=CENGIZ\SQLEXPRESS;Initial Catalog=BlogWebDB;Integrated Security=True;TrustServerCertificate=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM TBLADMIN WHERE KULLANICI=@P1 AND SIFRE=@P2",baglanti);
            cmd.Parameters.AddWithValue("@P1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@P2", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Response.Redirect("Hakkımda.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı Adı veya Şifre");
            }
            baglanti.Close();
        }
    }
}