import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// SECTION TITLE
              const Text(
                'Experience',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 24),

              /// CARD + CENTERED GLOW
              Stack(
                alignment: Alignment.center,
                children: [
                  /// CENTERED CIRCULAR GLOW (SUBTLE)
                  Container(
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple.withOpacity(0.18),
                          blurRadius: 45,
                        ),
                      ],
                    ),
                  ),

                  /// EXPERIENCE CARD
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF4F228D).withOpacity(0.10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        /// ROLE + COMPANY
                        Text(
                          'Frontend Developer – Kernn Automations',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 6),

                        /// LOCATION + DURATION
                        Text(
                          'Hyderabad, India | Nov 2024 – Present',
                          style: TextStyle(color: Colors.grey),
                        ),

                        SizedBox(height: 18),

                        /// EXPERIENCE POINTS
                        Text(
                          '• Built scalable, component-based React.js modules for dashboards, invoices, billing, and admin panels.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Developed Single Page Applications (SPA) with code splitting, lazy loading, and skeleton loaders to improve performance.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Integrated a real-time, event-driven ticketing and chat system using Socket.IO with file uploads and persistent communication.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Implemented OTP-based authentication and password recovery using Spring Boot, Spring Mail, and Spring Security.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Delivered ERP modules including Sales, Payments, Purchases, Production, and advanced filterable/searchable data tables.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Designed and deployed a dynamic image upload and labeling feature with automated file renaming (Front, Back, Right).',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Built server-side search and filtering APIs for Customers, Dealers, and VLA reports with optimized queries.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Implemented audit logging of user and system activities to support compliance and traceability.',
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Deployed applications on Hetzner servers and configured CI/CD pipelines to optimize hosting costs compared to AWS.',
                        ),
                      ],
                    ),
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
