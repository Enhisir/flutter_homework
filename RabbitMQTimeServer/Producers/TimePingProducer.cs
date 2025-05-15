using RabbitMQTimeServer.Events;
using Rebus.Bus;

namespace RabbitMQTimeServer.Producers;

public class TimePingProducer(
    IBus bus,
    ILogger<TimePingProducer> logger
    ) : BackgroundService
{
    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        while (true)
        {
            var time = new Time
            {
                GreenwichTime = DateTime.UtcNow,
                MoscowTime = TimeZoneInfo.ConvertTime(
                    DateTime.UtcNow,
                    TimeZoneInfo.FindSystemTimeZoneById("Russian Standard Time"))
            };
            await bus.Publish(time);
            logger.LogInformation("TimePing producer is done - {utcNow}", DateTime.UtcNow);
            await Task.Delay(TimeSpan.FromSeconds(10), stoppingToken);
        }   
    }
}