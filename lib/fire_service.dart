import 'dart:io';
import 'package:flutter/material.dart';

class FireService {
  final String ip;
  final int port = 5555;

  FireService(this.ip);
  Future<void> sendADB(String command) async {
    try {
      Socket socket = await Socket.connect(ip, port);
      socket.write("$command \n");
      await socket.flush();
      socket.destroy();
    } catch (e) {
      print('Error Sending command: $e');
    }
  }

  Future<void> volumeUp() => sendADB("input keyevent 24");
  Future<void> volumeDown() => sendADB("input keyevent 25");
  Future<void> volumeMute() => sendADB('input keyevent 164');
  Future<void> home() => sendADB("input keyevent 3");
  Future<void> back() => sendADB('input keyevent 4');
  Future<void> playPause() => sendADB('input keyevent 85');
  Future<void> netFlix() =>
      sendADB(" am start -n com.netflix.ninja/.MainActivity");
  Future<void> arrowUp() => sendADB('input keyevent 19');
  Future<void> arrowDown() => sendADB('input keyevent 20');
  Future<void> arrowLeft() => sendADB('input keyevent 21');
  Future<void> arrowRight() => sendADB('input keyevent 22');
  Future<void> selectButton() => sendADB('input keyword 23');
}
