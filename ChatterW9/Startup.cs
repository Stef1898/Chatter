using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ChatterW9.Startup))]
namespace ChatterW9
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
