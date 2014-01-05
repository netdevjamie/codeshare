using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RacePlace.Startup))]
namespace RacePlace
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
