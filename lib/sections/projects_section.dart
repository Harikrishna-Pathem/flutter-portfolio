import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// SECTION HEADER — UNCHANGED
              const Text(
                'Projects',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 32),

              /// WRAPPER FOR CARDS + SINGLE CENTERED GLOW
              Stack(
                alignment: Alignment.center,
                children: [
                  /// SINGLE CENTERED GLOW (MATCHES REACT)
                  Container(
                    width: 260,
                    height: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.22),
                          blurRadius: 50,
                        ),
                      ],
                    ),
                  ),

                  /// PROJECT CARDS (STACKED FOR MOBILE)
                  Column(
                    children: const [
                      ProjectCard(
                        title: 'Milk Dairy Management System',
                        duration: 'Nov 2024 – Present',
                        stack: 'React.js, Tailwind CSS, Socket.IO, REST APIs',
                        description:
                            'A web-based ERP platform for milk dairies to automate billing, dealer management, and daily collections.',
                        points: [
                          'Developed a responsive, modular UI using React.js and Tailwind CSS for cross-device compatibility.',
                          'Implemented real-time support chat UI using Socket.IO for instant staff–dealer communication.',
                          'Built filterable and searchable data tables for milk records, damages, and dealer transactions.',
                          'Integrated OTP-based authentication screens and connected them with backend APIs.',
                          'Designed a custom image upload and labeling UI (Front, Back, Left, Right) with dynamic previews.',
                        ],
                      ),

                      SizedBox(height: 24),

                      ProjectCard(
                        title: 'FeedBazaar',
                        duration: 'Feb 2025 – Jul 2025',
                        stack: 'React.js, Vite, Tailwind CSS, REST APIs',
                        description:
                            'A web-based e-commerce application for livestock feed procurement with offline-first support.',
                        points: [
                          'Developed React.js UI components with smooth navigation and responsive layouts.',
                          'Implemented offline cart management with local state handling and validation.',
                          'Designed invoice and order summary screens with GST and tax breakdown visualization.',
                          'Integrated REST APIs for orders, payments, inventory, and user operations.',
                          'Optimized frontend components for low-network environments, improving rural accessibility.',
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String duration;
  final String stack;
  final String description;
  final List<String> points;

  const ProjectCard({
    super.key,
    required this.title,
    required this.duration,
    required this.stack,
    required this.description,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF4F228D).withOpacity(0.10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 4),

          /// DURATION
          Text(
            duration,
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          ),

          const SizedBox(height: 6),

          /// STACK
          Text(
            stack,
            style: const TextStyle(color: Colors.deepPurple, fontSize: 13.5),
          ),

          const SizedBox(height: 12),

          /// DESCRIPTION
          Text(description, style: const TextStyle(fontSize: 15, height: 1.6)),

          const SizedBox(height: 14),

          /// BULLET POINTS
          ...points.map(
            (point) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text('• $point'),
            ),
          ),
        ],
      ),
    );
  }
}
