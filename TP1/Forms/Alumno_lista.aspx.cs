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
            BindGridView();
            
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
            gvAlumnos.EditIndex = e.NewEditIndex;
            BindGridView();
            
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
    

            TextBox nombre = gvAlumnos.Rows[e.RowIndex].FindControl("txtNombre") as TextBox;
            TextBox apellido = gvAlumnos.Rows[e.RowIndex].FindControl("txtApellido") as TextBox;

            int alumnoID = Convert.ToInt32(gvAlumnos.DataKeys[e.RowIndex].Value);
            alumno alu = ctx.alumno.First(x => x.id == alumnoID);
            alu.nombre = nombre.Text;
            alu.apellido = apellido.Text;

            ctx.SaveChanges();

            gvAlumnos.EditIndex = -1;
            BindGridView();

        }     



        protected void gvAlumnos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[0].Visible = false;
        }

        protected void gvAlumnos_delete(object sender, GridViewDeleteEventArgs e)
        {

           int alumnoID = Convert.ToInt32(gvAlumnos.DataKeys[e.RowIndex].Value);
           
           alumno obj = ctx.alumno.First(x => x.id == alumnoID);
           ctx.alumno.Remove(obj);
           ctx.SaveChanges();
           BindGridView();
                
            
        }



    }
}