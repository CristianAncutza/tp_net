using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP1.Model;

namespace TP1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        TP1Entities ctx= new TP1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();            
            }
            
            
        }

        protected void BindGridView() {
            
            var alumnos = from a in ctx.alumno select a;            
            List<alumno> ListaAlumnos = alumnos.ToList();

            gvAlumnos.DataSource = ListaAlumnos;
            gvAlumnos.DataBind();
        }


        protected void LnkAlta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumno_alta.aspx");
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            var dni = 0;
            var alumnos = from a in ctx.alumno select a; ;

            if (!string.IsNullOrEmpty(TxtDni.Text))
            {
                dni = Convert.ToInt32(TxtDni.Text);
                alumnos = from a in ctx.alumno where (dni == a.dni || TxtApellido.Text == a.apellido) select a;
            }
            else if (string.IsNullOrEmpty(TxtDni.Text) && !string.IsNullOrEmpty(TxtApellido.Text))
            {
                alumnos = from a in ctx.alumno where (TxtApellido.Text == a.apellido) select a;
            }
                        
            List<alumno> ListaAlumnos = alumnos.ToList();
            gvAlumnos.DataSource = ListaAlumnos;
            gvAlumnos.DataBind();
        }

        protected void gvAlumnos_edit(object sender, GridViewEditEventArgs e)
        {
            int id = (int)gvAlumnos.DataKeys[e.NewEditIndex].Values["id"];

            Session["id"] = id;

            Response.Redirect("Alumno_editar.aspx");
            
        }

        protected void gvAlumnos_delete(object sender, GridViewDeleteEventArgs e)
        {

            int id = (int)gvAlumnos.DataKeys[e.RowIndex].Values["id"];
           
           alumno alu = (from a in ctx.alumno where a.id == id select a).FirstOrDefault();
           ctx.alumno.Remove(alu);       
           ctx.SaveChanges();
           
            BindGridView();                            
        }

        protected void gvAlumnos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {

                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(gvAlumnos.DataKeys[index].Value);

            }
        }

         

    }
}