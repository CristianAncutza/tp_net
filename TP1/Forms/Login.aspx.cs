using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class Login: System.Web.UI.Page
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

                sqlcon = new SqlConnection(@"Data Source=localhost ;Initial Catalog=tp1;Integrated Security=True;Pooling=False");
                sqlcon.Open();

                sqlcom = new SqlCommand("SELECT * FROM usuario WHERE usuario = '" + TxtUsuario.Text + "' AND password = '" + TxtPassword.Text + "'", sqlcon);
                SqlDataReader dr = sqlcom.ExecuteReader();

                if (dr.Read())
                {
                    Session["UsuarioLogueado"] = TxtUsuario.Text;
                    Response.Redirect("Alumno_lista.aspx");
                }
                else
                {
                    LblError.Text = "Verifique los datos ingresados.";
                }
                sqlcon.Close();
            }
        }
     }


}
