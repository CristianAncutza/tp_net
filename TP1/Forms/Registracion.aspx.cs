using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1
{
    public partial class Registracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {                
                SqlConnection sqlcon;
                SqlCommand sqlcom;
                bool exists = false;

                sqlcon = new SqlConnection(@"Data Source=localhost;Initial Catalog=tp1;Integrated Security=True;Pooling=False");
                sqlcon.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM usuario WHERE usuario = '" + TxtUsuario.Text + "'", sqlcon))
                {
                    cmd.Parameters.AddWithValue("@usuario", TxtUsuario.Text);
                    exists = (int)cmd.ExecuteScalar() > 0;
                }

                // if exists, show a message error
                if (exists)
                {
                    LblError.Text = "El nombre de usuario ingresado ya existe";                    
                }
                else
                {
                    sqlcom = new SqlCommand("INSERT INTO usuario (usuario, password) VALUES (@usuario, @password) ", sqlcon);

                    sqlcom.Parameters.AddWithValue("@usuario", TxtUsuario.Text);
                    sqlcom.Parameters.AddWithValue("@password", TxtPassword.Text);                    
                    sqlcom.ExecuteNonQuery();

                    Response.Redirect("Alumno_lista.aspx");                    
                }

                sqlcon.Close();
            }
        }
    }
}