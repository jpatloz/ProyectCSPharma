using Microsoft.AspNetCore.Identity;

namespace ProyectCSPharma.Areas.Identity.Data
{
    public class UserAuthentication : IdentityUser
    {
        public string UsuarioNombre { get; set; }
        public string UsuarioApellidos { get; set; }
    }

}