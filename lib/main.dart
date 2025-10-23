import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          secondary: Colors.black,
          background: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                // Portrait mode layout
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: constraints.maxHeight * 0.05),
                        // Profile Picture
                        CircleAvatar(
                          radius: constraints.maxWidth * 0.15, // Responsive size
                          backgroundImage: const AssetImage('assets/profile.jpg'),
                          backgroundColor: Colors.grey[300],
                        ),
                        SizedBox(height: constraints.maxHeight * 0.03),

                        // Name
                        const Text(
                          'James Michael C. Mejares',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: constraints.maxHeight * 0.02),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'I am a 3rd year Info-Tech Student at PUP-Taguig Campus',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54, fontSize: 14),
                          ),
                        ),

                        SizedBox(height: constraints.maxHeight * 0.04),

                        // Edit Profile Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: constraints.maxWidth * 0.1,
                              vertical: 15,
                            ),
                          ),
                          child: const Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                // Landscape mode layout
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left side - Profile Picture
                        SizedBox(
                          width: constraints.maxWidth * 0.4,
                          child: Center(
                            child: CircleAvatar(
                              radius: constraints.maxHeight * 0.25,
                              backgroundImage:
                                  const AssetImage('assets/profile.jpg'),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ),

                        // Right side - Information
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'James Michael C. Mejares',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: constraints.maxHeight * 0.02),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'I am a 3rd year Info-Tech Student at PUP-Taguig Campus',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                              ),
                              SizedBox(height: constraints.maxHeight * 0.04),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: constraints.maxWidth * 0.05,
                                    vertical: 15,
                                  ),
                                ),
                                child: const Text(
                                  'Edit Profile',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
