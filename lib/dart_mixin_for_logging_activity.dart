/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_mixin_for_logging_activity_base.dart';

// TODO: Export any libraries intended for clients of this package.

mixin ActivityLogger {
  String logActivity(String activity) {
    return activity;
  }

  String? someNonLoggingActivity() {
    return null;
  }
}

class Server with ActivityLogger {
  String startServer() {
    return logActivity('Server started');
  }

  String stopServer() {
    return logActivity('Server stopped');
  }
}

class Client with ActivityLogger {
  String connectServer() {
    return logActivity('Client connected to server');
  }

  String disconnectServer() {
    return logActivity('Client disconnected from server');
  }
}

/*
Practice Question 2: Mixin for Logging Activity
Question:

Create a mixin ActivityLogger with a method 
logActivity(String activity) that prints the activity.
Apply this mixin to two classes, Server and Client.
Each class should have specific methods that, 
when called, log a message about what they are doing 
using logActivity.
 */