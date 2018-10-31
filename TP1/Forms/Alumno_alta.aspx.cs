using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP1.Model;

namespace TP1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        TP1Entities ctx = new TP1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumno_lista.aspx");
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            alumno alu = new alumno(){
                 nombre = TxtNombre.Text,
                 apellido = TxtApellido.Text,
                 dni = Int32.Parse(TxtDni.Text),
                 fecha_nacimiento = DateTime.ParseExact(TxtFecnac.Text, "dd-mm-yyyy HH:mm", CultureInfo.InvariantCulture)

                 
            };

            ctx.alumno.Add(alu);
            ctx.SaveChanges();
        }
    }
}