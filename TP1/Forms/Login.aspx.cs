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
        TP1Entities ctx = new TP1Entities();
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
         

                    Response.Redirect("~/Forms/Alumno_lista.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                
            }
        }

        private bool validarLogin() {

            try
            {
                string nombre = WUC_Login.Usuario;
                string password = TxtPassword.Text;

                var usuarioLogueado = (from u in ctx.usuario where u.password == password && u.usuario1 == nombre select u).FirstOrDefault();

                if (usuarioLogueado != null)
                {
                    nombre = usuarioLogueado.usuario1;

                    Session["nombre"] = nombre;

                    return true;
                }
                else
                {
                    LblError.Text = "Error! Usuario y/o contraseña invalida.";
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
