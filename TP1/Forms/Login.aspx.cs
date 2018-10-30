using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP1.Model;

namespace TP1
{
    public partial class Login: System.Web.UI.Page
    {
        TP1Entities usuarioLogin = new TP1Entities();
        usuario usu = new usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {

                LblError.Visible = false;
                if (!validarLogin())
                {
                    LblError.Visible = true;
                }
                else
                {
                    LblError.Visible = false;




                    FormsAuthentication.SetAuthCookie(usu.id.ToString(), false);
                    Session["Usuario"] = usu;


                    Response.Redirect("~/Forms/Alumno_lista.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();


                }
                /*

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
            sqlcon.Close();*/
            }
        }

        private bool validarLogin() {

            try
            {
                string usua = TxtUsuario.Text;
                string pass = TxtPassword.Text;

                var user = (from u in usuarioLogin.usuario where u.password == pass && u.usuario1 == usua select u).FirstOrDefault();

                if (user != null)
                {
                    usu = user;

                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
     }


}
