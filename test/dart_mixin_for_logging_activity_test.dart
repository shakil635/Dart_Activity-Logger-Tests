import 'package:dart_mixin_for_logging_activity/dart_mixin_for_logging_activity.dart';
// replace with your actual file name
import 'dart:io';
import 'package:test/test.dart';

void main() {
  group('Activity Logger Tests', () {
    test('Server logs its activities', () {
      var server = Server();
      var log = server.startServer();
      expect(log, equals('Server started'));

      log = server.stopServer();
      expect(log, equals('Server stopped'));
    });

    test('Client logs its activities', () {
      var client = Client();
      var log = client.connectServer();
      expect(log, equals('Client connected to server'));

      log = client.disconnectServer();
      expect(log, equals('Client disconnected from server'));
    });

    test('Server activity without logging', () {
      var server = Server();
      // Simulate an activity without logging
      expect(server.someNonLoggingActivity(), isNull);
    });

    test('Client activity without logging', () {
      var client = Client();
      // Simulate an activity without logging
      expect(client.someNonLoggingActivity(), isNull);
    });
  });
}
