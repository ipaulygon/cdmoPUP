using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TEAR.Startup))]
namespace TEAR
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
