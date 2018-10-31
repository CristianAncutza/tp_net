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
        TP1Entities tabla = new TP1Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        protected void BindGridView() {
            var alumnos = from a in tabla.alumno select a;
            
            List<alumno> ListaAlumnos = alumnos.ToList();

            gvAlumnos.DataSource = ListaAlumnos;
            gvAlumnos.DataBind();
        }


        protected void LnkAlta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumno_Alta.aspx");
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}