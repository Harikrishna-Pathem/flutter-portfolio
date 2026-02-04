import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// SECTION TITLE
              const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              /// INTRO LINE
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  children: const [
                    TextSpan(text: 'I’m a '),
                    TextSpan(
                      text: 'Frontend Developer',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: ' specializing in '),
                    TextSpan(
                      text: 'React.js',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// MAIN DESCRIPTION
              const Text(
                'Currently, I work as a Frontend Developer, where I focus on building scalable, high-performance web applications using React.js and modern frontend tooling. My work involves designing clean, reusable components, managing application state efficiently, and integrating frontend systems with REST APIs and real-time services.',
                style: TextStyle(
                  fontSize: 15.5,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'I have hands-on experience developing enterprise-level ERP modules, dashboards, and real-time communication features. I pay close attention to performance, accessibility, and responsive design, ensuring applications work smoothly across devices and environments.',
                style: TextStyle(
                  fontSize: 15.5,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 20),

              /// UX / BUSINESS BALANCE
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15.5,
                    height: 1.7,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  children: const [
                    TextSpan(
                      text:
                          'With a strong interest in UI/UX, I enjoy crafting interfaces that are not only visually appealing but also intuitive and user-friendly. I aim to create digital products that strike a balance between ',
                    ),
                    TextSpan(
                      text: 'user experience',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'business requirements',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
