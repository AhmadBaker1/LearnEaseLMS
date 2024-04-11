using LMS.Services;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;

namespace LMS.Components
{
    public class App : IComponent
    {
        public void Attach(RenderHandle renderHandle)
        {
            // Implement the Attach method to initialize rendering logic
        }

        public Task SetParametersAsync(ParameterView parameters)
        {
            // Implement the SetParametersAsync method to handle parameter changes
            return Task.CompletedTask;
        }

        public void Dispose()
        {
            // Implement the Dispose method to clean up resources
        }

        public static async Task Main(string[] args)
        {
            var builder = WebAssemblyHostBuilder.CreateDefault(args);
            builder.RootComponents.Add<App>("app"); // Adding the App component as the root component

            // Register services
            builder.Services.AddScoped<AuthService>(); // Registering the AuthService

            await builder.Build().RunAsync(); // Starting the app
        }
    }
}