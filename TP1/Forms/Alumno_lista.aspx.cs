﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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