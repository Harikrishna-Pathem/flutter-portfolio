import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
      color: const Color(0xFF4F228D).withOpacity(0.10),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// SECTION TITLE
              Text(
                'Technical Skills',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black,
                ),
              ),

              const SizedBox(height: 16),

              /// DESCRIPTION
              Text(
                'I’m currently looking to join a cross-functional team that values building meaningful products through clean, accessible, and user-focused design. I enjoy collaborating with designers, backend engineers, and product teams to create interfaces that improve people’s everyday experiences while meeting real business needs.',
                style: TextStyle(
                  fontSize: 15.5,
                  height: 1.7,
                  color: isDark
                      ? Colors.white.withOpacity(0.85)
                      : Colors.black87,
                ),
              ),

              const SizedBox(height: 40),

              /// SKILL CATEGORIES
              Column(
                children: const [
                  SkillCard(
                    title: 'Frontend Development',
                    description:
                        'Building responsive, accessible, and high-performance user interfaces with modern frameworks.',
                    skills: [
                      Skill(FontAwesomeIcons.react, 'React.js', Colors.cyan),
                      Skill(FontAwesomeIcons.js, 'JavaScript', Colors.amber),
                      Skill(SimpleIcons.tailwindcss, 'Tailwind CSS', Colors.lightBlue),
                      Skill(SimpleIcons.chakraui, 'Chakra UI', Colors.teal),
                      Skill(FontAwesomeIcons.bootstrap, 'Bootstrap', Colors.purple),
                      Skill(FontAwesomeIcons.html5, 'HTML5', Colors.orange),
                      Skill(FontAwesomeIcons.css3Alt, 'CSS3', Colors.blue),
                      Skill(SimpleIcons.vite, 'Vite', Colors.deepPurple),
                      Skill(SimpleIcons.nextdotjs, 'Next.js', Colors.white),
                    ],
                  ),

                  SizedBox(height: 24),

                  SkillCard(
                    title: 'Backend Development',
                    description:
                        'Designing secure, scalable APIs and services to power real-world applications.',
                    skills: [
                      Skill(FontAwesomeIcons.java, 'Java', Colors.red),
                      Skill(SimpleIcons.springboot, 'Spring Boot', Colors.green),
                      Skill(FontAwesomeIcons.nodeJs, 'Node.js', Colors.greenAccent),
                      Skill(SimpleIcons.express, 'Express.js', Colors.grey),
                    ],
                  ),

                  SizedBox(height: 24),

                  SkillCard(
                    title: 'Databases',
                    description:
                        'Designing efficient schemas and optimized queries.',
                    skills: [
                      Skill(SimpleIcons.mysql, 'MySQL', Colors.blue),
                      Skill(SimpleIcons.postgresql, 'PostgreSQL', Colors.indigo),
                    ],
                  ),

                  SizedBox(height: 24),

                  SkillCard(
                    title: 'Mobile Development',
                    description:
                        'Cross-platform mobile apps with performance and usability in mind.',
                    skills: [
                      Skill(FontAwesomeIcons.react, 'React Native', Colors.cyan),
                      Skill(SimpleIcons.flutter, 'Flutter', Colors.lightBlue),
                      Skill(SimpleIcons.dart, 'Dart', Colors.blue),
                    ],
                  ),

                  SizedBox(height: 24),

                  SkillCard(
                    title: 'Testing & Tools',
                    description:
                        'Modern tooling for development, testing, and deployment.',
                    skills: [
                      Skill(FontAwesomeIcons.gitAlt, 'Git', Colors.orange),
                      Skill(FontAwesomeIcons.github, 'GitHub', Colors.white),
                      Skill(SimpleIcons.postman, 'Postman', Colors.orangeAccent),
                      Skill(FontAwesomeIcons.code, 'VS Code', Colors.blue),
                      Skill(FontAwesomeIcons.gears, 'CI/CD', Colors.purple),
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

/// --------------------
/// SKILL CARD
/// --------------------
class SkillCard extends StatelessWidget {
  final String title;
  final String description;
  final List<Skill> skills;

  const SkillCard({
    super.key,
    required this.title,
    required this.description,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF4F228D).withOpacity(0.22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),

          const SizedBox(height: 8),

          /// DESCRIPTION
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color:
                  isDark ? Colors.white.withOpacity(0.7) : Colors.black54,
            ),
          ),

          const SizedBox(height: 16),

          /// SKILL TAGS
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: skills.map((skill) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF4F228D).withOpacity(0.35),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaIcon(
                      skill.icon,
                      size: 16,
                      color: skill.color,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      skill.label,
                      style: TextStyle(
                        fontSize: 13,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

/// --------------------
/// SKILL MODEL
/// --------------------
class Skill {
  final IconData icon;
  final String label;
  final Color color;

  const Skill(this.icon, this.label, this.color);
}
