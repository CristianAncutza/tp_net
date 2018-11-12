using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class WUC_Login : System.Web.UI.UserControl
    {

        public string Usuario
        {
            get { return TxtUsuario.Text; }
            set { TxtUsuario.Text = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}