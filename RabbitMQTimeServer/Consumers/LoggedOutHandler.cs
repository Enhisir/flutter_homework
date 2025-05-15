using Microsoft.Extensions.Caching.Memory;
using RabbitMQTimeServer.Events;
using Rebus.Bus;
using Rebus.Handlers;
using Rebus.Retry.Simple;

namespace RabbitMQTimeServer.Consumers;

public class LoggedOutHandler(
    IBus bus, 
    IMemoryCache memoryCache,
    ILogger<LoggedOutHandler> logger) : IHandleMessages<LoggedOut>, IHandleMessages<IFailed<LoggedOut>>
{
    public Task Handle(LoggedOut message)
    {
        memoryCache.Remove(message.Session);
        logger.LogInformation("Logged out for session {session}", message.Session);
        return Task.CompletedTask;
    }

    public async Task Handle(IFailed<LoggedOut> failedMessage)
    {
        await bus.Advanced.TransportMessage.Defer(TimeSpan.FromSeconds(30));
    }
}