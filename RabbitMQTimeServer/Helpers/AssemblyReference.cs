using System.Reflection;

namespace RabbitMQTimeServer.Helpers;

public abstract class AssemblyReference
{
    private AssemblyReference() {}
    
    public static Assembly Assembly = Assembly.GetExecutingAssembly();
}