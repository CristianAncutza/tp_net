using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP1.Model;

namespace TP1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        TP1Entities ctx = new TP1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
                Label3.Text = Session["id"].ToString();
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
     

          // bool result = ActualizarAlumno(alu); 
           
        }  
       
        public bool ActualizarAlumno(alumno alu)
        {  
           bool result = false;  

               alumno _alu = ctx.alumno.Where(x => x.id == alu.id).Select(x => x).FirstOrDefault();
               _alu.nombre = TxtNombre.Text;
               _alu.apellido = TxtApellido.Text;
               _alu.ciudad = DdlCiudad.SelectedValue; 
               _alu.sexo = DdlSexo.SelectedValue;
               ctx.SaveChanges(); 
               result = true;  
             
           return result;  
        }
    }
}