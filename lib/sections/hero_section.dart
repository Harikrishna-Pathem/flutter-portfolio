import 'package:flutter/material.dart';
import 'package:portfolio/sections/resume_viewer.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    final availableHeight =
        media.size.height -
        kToolbarHeight -
        kBottomNavigationBarHeight -
        media.padding.top;

    return SizedBox(
      height: availableHeight,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// IMAGE + GLOW
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.withOpacity(0.75),
                              blurRadius: 35,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/developer.png', width: 100),
                    ],
                  ),

                  const SizedBox(height: 28),

                  /// NAME
                  const Text(
                    'Harikrishna Pathem',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),

                  /// ROLE (matches React typewriter content, static here)
                  const Text(
                    'Frontend Developer • React.js Specialist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// DESCRIPTION
                  const Text(
                    'Building scalable, real-world applications with modern UI architecture, real-time communication, and performance-focused design.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, height: 1.6),
                  ),

                  const SizedBox(height: 32),

                  /// ACTION BUTTONS
                  Column(
                    children: [
                      /// VIEW PROJECTS
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Scroll handled by BottomNav in HomeScreen
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            backgroundColor: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'View Projects',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// VIEW RESUME
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => const ResumeViewer(),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            side: BorderSide(color: Colors.grey.shade400),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'View Resume',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
