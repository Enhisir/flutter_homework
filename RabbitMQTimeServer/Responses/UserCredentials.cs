namespace RabbitMQTimeServer.Responses;

public class UserCredentials
{
    public string Username { get; set; } = null!;
    public Guid Session { get; set; }
}