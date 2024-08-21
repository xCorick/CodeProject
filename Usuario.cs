using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class Usuario
    {
        private string usuarioCorreo;
        private string usuarioPasword;
        private bool usuarioTipo;
        private string usuarioNombre;
        private string usuarioFoto;

        public string Correo { get => usuarioCorreo; set => usuarioCorreo = value; }
        public string PassworD { get => usuarioPasword; set => usuarioPasword = value; }
        public bool Tipo { get => usuarioTipo; set => usuarioTipo = value; }
        public string UsuarioNombre { get => usuarioNombre; set => usuarioNombre = value; }
        public string UsuarioFoto { get => usuarioFoto; set => usuarioFoto = value; }

        public Usuario(string usuarioCorreo, string usuarioPasword, bool usuarioTipo, string usuarioNombre)
        {
            this.usuarioCorreo = usuarioCorreo;
            this.usuarioPasword = usuarioPasword;
            this.usuarioTipo = usuarioTipo;
            this.usuarioNombre = usuarioNombre;
        }
    }
}