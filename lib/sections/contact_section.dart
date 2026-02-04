import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _open(String url) async {
    final Uri uri = Uri.parse(url);

    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        debugPrint('Could not launch $url');
      }
    } catch (e) {
      debugPrint('Launch error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            children: [
              /// TITLE
              Text(
                'Let’s Work Together',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: isDark ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              /// DESCRIPTION
              Text(
                'I’m open to frontend and full-stack opportunities where I can contribute to building scalable, accessible, and user-focused applications. If you’d like to collaborate or discuss an opportunity, feel free to reach out through any of the platforms below.',
                style: TextStyle(
                  fontSize: 15.5,
                  height: 1.7,
                  color: isDark
                      ? Colors.white.withOpacity(0.85)
                      : Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              /// CONTACT ICONS
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 28,
                children: [
                  /// EMAIL — Gmail Red
                  _ContactIcon(
                    icon: FontAwesomeIcons.envelope,
                    color: Colors.red,
                    tooltip: 'Email',
                    onTap: () =>
                        _open('mailto:harikrishnapathem0719@gmail.com'),
                  ),

                  /// LINKEDIN — Brand Blue
                  _ContactIcon(
                    icon: FontAwesomeIcons.linkedin,
                    color: const Color(0xFF0A66C2),
                    tooltip: 'LinkedIn',
                    onTap: () =>
                        _open('https://www.linkedin.com/in/harikrishna-pathem'),
                  ),

                  /// GITHUB — Theme Aware
                  _ContactIcon(
                    icon: FontAwesomeIcons.github,
                    color: isDark ? Colors.white : Colors.black,
                    tooltip: 'GitHub',
                    onTap: () => _open('https://github.com/HarikrishnaPathem'),
                  ),

                  /// PHONE — Green + Tooltip
                  Tooltip(
                    message: '+91 8247517346',
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    textStyle: const TextStyle(color: Colors.white),
                    child: _ContactIcon(
                      icon: FontAwesomeIcons.phoneAlt,
                      color: Colors.green,
                      tooltip: 'Call',
                      onTap: () => _open('tel:+918247517346'),
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

/// --------------------
/// CONTACT ICON WIDGET
/// --------------------
class _ContactIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final String tooltip;

  const _ContactIcon({
    required this.icon,
    required this.color,
    required this.onTap,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: FaIcon(icon, size: 28, color: color),
        ),
      ),
    );
  }
}
