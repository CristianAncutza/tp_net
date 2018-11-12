using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP1.Model;
namespace TP1
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            TP1Entities ctx = new TP1Entities();
            if (Page.IsValid)
            {
                try
                {
                    usuario usu = new usuario()
                    {
                        usuario1 = WUC_Login.Usuario,
                        password = TxtPassword.Text

                    };

                    ctx.usuario.Add(usu);
                    ctx.SaveChanges();

                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    LblError.Text = Convert.ToString(ex);
                }
            }
        }
    }
}