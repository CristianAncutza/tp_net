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
            if (!IsPostBack)
            {
                var id = 0;
                if (Session["id"] != null)
                    id = Convert.ToInt32(Session["id"].ToString());

                alumno alu = (from a in ctx.alumno where a.id == id select a).FirstOrDefault();

                Label3.Text = alu.apellido + ", " + alu.nombre;

                TxtNombre.Text = alu.nombre;
                TxtApellido.Text = alu.apellido;
                TxtDni.Text = Convert.ToString(alu.dni);
                DdlSexo.SelectedValue = alu.sexo;
                TxtFecnac.Text = Convert.ToString(alu.fecha_nacimiento);
                TxtTelefono.Text = alu.telefono;
                TxtDireccion.Text = alu.direccion;
                DdlPais.SelectedValue = alu.pais;
                DdlProvincia.SelectedValue = alu.provincia;
                DdlCiudad.SelectedValue = alu.ciudad;
                TxtMaterias.Text = Convert.ToString(alu.materias_aprobadas);
            }
            else
            {
                    DateTime fecha;
                    if (!DateTime.TryParse(TxtFecnac.Text, out fecha))
                        LblErrorFecNac.Text = "* Formato de fecha invalido";

            }

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {

            var id = 0;
            if (Session["id"] != null)
                id = Convert.ToInt32(Session["id"].ToString());
                     
          bool result = ActualizarAlumno(id);

          if (result)
              Response.Redirect("Alumno_lista.aspx");
                 
        }  
       
        public bool ActualizarAlumno(int id)
        {  
           bool result = false;

           try
           {
               alumno _alu = (from a in ctx.alumno where a.id == id select a).First();
               _alu.nombre = TxtNombre.Text;
               _alu.apellido = TxtApellido.Text;
               _alu.dni = Convert.ToInt32(TxtDni.Text);
               _alu.sexo = DdlSexo.SelectedValue;
               _alu.fecha_nacimiento = Convert.ToDateTime(TxtFecnac.Text);
               _alu.telefono = TxtTelefono.Text;
               _alu.direccion = TxtDireccion.Text;
               _alu.pais = DdlPais.SelectedValue;
               _alu.provincia = DdlProvincia.SelectedValue;
               _alu.ciudad = DdlCiudad.SelectedValue;
               _alu.materias_aprobadas = Convert.ToInt32(TxtMaterias.Text);
               ctx.SaveChanges();
               result = true;

               return result;
           }
           catch (Exception ex) {
               LblError.Text = "No se pudieron actualizar los datos del alumno, verifique los datos ingresados.";                
           }
           return result;

        }
    }
}