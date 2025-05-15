using RabbitMQTimeServer.Consumers;
using RabbitMQTimeServer.Events;
using RabbitMQTimeServer.Helpers;
using RabbitMQTimeServer.Producers;
using Rebus.Config;
using Rebus.Routing.TypeBased;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddRebus((configure, provider) => 
    {
        var connectionString = builder.Configuration.GetConnectionString("RabbitMQ");
        return configure
            .Logging(l => l.MicrosoftExtensionsLogging(
                provider.GetRequiredService<ILoggerFactory>()))
            .Routing(r => r.TypeBased().MapAssemblyOf<AssemblyReference>("time-server"))
            .Transport(t => t.UseRabbitMq(connectionString, "time-server"));
    },
    onCreated: async bus =>
    {
        await bus.Subscribe<LoggedOut>();
        await bus.Subscribe<Time>();
    });
builder.Services.AutoRegisterHandlersFromAssemblyOf<AssemblyReference>();
builder.Services.AddControllers();
builder.Services.AddOpenApi();
builder.Services.AddLogging();
builder.Services.AddMemoryCache();
builder.Services.AddHostedService<TimePingProducer>();
builder.WebHost.UseUrls("http://*:5000");

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.MapOpenApi();
}
app.UseHttpsRedirection();
app.UseAuthorization();
app.MapControllers();
app.MapOpenApi("/openapidocument.json");
app.Run();