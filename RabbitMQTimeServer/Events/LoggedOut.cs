namespace RabbitMQTimeServer.Events;

public class LoggedOut
{
    public Guid Session { get; set; }
}