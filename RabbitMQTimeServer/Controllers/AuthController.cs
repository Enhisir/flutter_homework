using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Memory;
using RabbitMQTimeServer.Events;
using RabbitMQTimeServer.Requests;
using RabbitMQTimeServer.Responses;
using Rebus.Bus;

namespace RabbitMQTimeServer.Controllers;

[ApiController]
[Route("api/[controller]")]
public class AuthController(
    IBus bus,
    IMemoryCache memoryCache)
{
    [HttpPost]
    public Task<IResult> Auth(AuthRequest request)
    {
        if (!memoryCache.TryGetValue(request.Session, out string? username))
            return Task.FromResult(Results.Unauthorized());
        return Task.FromResult(Results.Ok(new UserCredentials
        {
            Username = username!,
            Session = request.Session
        }));
    }
    
    [HttpPost("login")]
    public async Task<IResult> Login(LoginRequest request)
    {
        if (memoryCache.TryGetValue(request.Username, out Guid session))
        {
            await bus.Publish(new LoggedOut { Session = session });
        }
        
        return Results.Ok(new UserCredentials
        {
            Username = request.Username,
            Session = Guid.NewGuid(),
        });
    }

    [HttpPost("logout")]
    public async Task<IResult> Logout(LoggedOut request)
    {
        await bus.Publish(request);
        return Results.Ok();
    }
}