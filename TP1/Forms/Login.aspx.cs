using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                SqlConnection sqlcon;
                SqlCommand sqlcom;

                sqlcon = new SqlConnection(@"Data Source=FACUNDO\SQLEXPRESS;Initial Catalog=tp1;Integrated Security=True;Pooling=False");
                sqlcon.Open();

                sqlcom = new SqlCommand("SELECT * FROM usuario WHERE usuario = '" + TextBoxUsuario.Text + "' AND password = '" + TextBoxPassword.Text + "'", sqlcon);
                SqlDataReader dr = sqlcom.ExecuteReader();

                if (dr.Read())
                {
                    Session["UsuarioLogueado"] = TextBoxUsuario.Text;
                    Response.Redirect("Alumno_lista.aspx");
                }
                else
                {
                    Label1.Text = "Verifique usuario y/o contraseña.";
                }
                sqlcon.Close();
            }
        }
     }


}
