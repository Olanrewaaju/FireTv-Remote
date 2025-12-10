import 'package:flutter/material.dart';
import 'package:remote_controller/fire_service.dart';

class FireApp extends StatefulWidget {
  const FireApp({super.key});

  @override
  State<FireApp> createState() => _FireAppState();
}

class _FireAppState extends State<FireApp> {
  final fireTV = FireService("192.168.100.28");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,

            colors: [
              const Color.fromARGB(255, 35, 37, 38),
              const Color.fromARGB(255, 35, 40, 42),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: 0.785398,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,

                            colors: [
                              const Color.fromARGB(255, 0, 0, 0),
                              const Color.fromARGB(255, 42, 42, 42),
                            ],
                          ),

                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,

                      child: IconButton(
                        style: ButtonStyle(),
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_up_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,

                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,

                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_left_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,

                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_right_rounded,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: const EdgeInsets.all(24),
                        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
                        elevation: 6,
                      ),
                      child: const Text(
                        "OK",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,

                        colors: [
                          const Color.fromARGB(255, 0, 0, 0),
                          const Color.fromARGB(255, 42, 42, 42),
                        ],
                      ),

                      borderRadius: BorderRadius.circular(30),
                    ),

                    height: 160,
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            fireTV.volumeUp();
                          },
                          icon: Icon(color: Colors.white, Icons.add),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            color: Colors.white,
                            Icons.music_off_rounded,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            fireTV.volumeDown();
                          },
                          icon: Icon(color: Colors.white, Icons.remove),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},

                    child: Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,

                          colors: [
                            const Color.fromARGB(255, 0, 0, 0),
                            const Color.fromARGB(255, 42, 42, 42),
                          ],
                        ),

                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                          Text('Home', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  InkWell(
                    onTap: () {},

                    child: Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,

                          colors: [
                            const Color.fromARGB(255, 0, 0, 0),
                            const Color.fromARGB(255, 42, 42, 42),
                          ],
                        ),

                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.exit_to_app_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                          Text('Back', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  fireTV.playPause();
                  print("Play/Pause pressed");
                },
                child: Text("Play/Pause"),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  fireTV.home();
                  print("Home pressed");
                },
                child: Text("Home"),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  fireTV.back();
                  print("Back pressed");
                },
                child: Text("Back"),
              ),
              ElevatedButton(
                onPressed: () {
                  fireTV.netFlix();
                  print('Opened Netflix');
                },
                child: Text('Opened Netflix'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
