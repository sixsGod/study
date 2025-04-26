using System;

namespace EventExample
{
    // Define a delegate
    public delegate void NotifyEventHandler(string message);

    // Define a class that contains an event
    public class Publisher
    {
        // Declare the event using the delegate
        public event NotifyEventHandler Notify;

        public void TriggerEvent(string message)
        {
            // Check if there are any subscribers
            Notify?.Invoke(message);
        }
    }

    public class Subscriber
    {
        public void OnNotify(string message)
        {
            Console.WriteLine($"Subscriber received message: {message}");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Publisher publisher = new Publisher();
            Subscriber subscriber = new Subscriber();

            // Subscribe to the event
            publisher.Notify += subscriber.OnNotify;

            // Trigger the event
            publisher.TriggerEvent("Hello, Event!");

            // Unsubscribe from the event
            publisher.Notify -= subscriber.OnNotify;
        }
    }
}