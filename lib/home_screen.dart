import 'package:flutter/material.dart';
import 'package:portfolio/sections/about_section.dart';
import 'package:portfolio/sections/contact_section.dart';
import 'package:portfolio/sections/experience_section.dart';
import 'package:portfolio/sections/hero_section.dart';
import 'package:portfolio/sections/projects_section.dart';
import 'package:portfolio/sections/skills_section.dart';


class HomeScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;

  const HomeScreen({super.key, required this.onToggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  final List<GlobalKey> _sections = List.generate(6, (_) => GlobalKey());

  int _currentIndex = 0;

  void _scrollTo(int index) {
    final context = _sections[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      // 🔝 APP BAR (MATCHES REACT NAVBAR STYLE)
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDark
            ? const Color.fromARGB(150, 26, 11, 46)
            : const Color.fromARGB(206, 218, 204, 232),
        title: Row(
          children: const [
            Icon(Icons.work_outline),
            SizedBox(width: 8),
            Text(
              'Portfolio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),

      // 📜 BODY (SCROLLABLE SECTIONS)
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(key: _sections[0], child: const HeroSection()),
            Container(key: _sections[1], child: const AboutSection()),
            Container(key: _sections[2], child: const ExperienceSection()),
            Container(key: _sections[3], child: const ProjectsSection()),
            Container(key: _sections[4], child: const SkillsSection()),
            Container(key: _sections[5], child: const ContactSection()),
          ],
        ),
      ),

      // 🔽 BOTTOM NAV BAR (MOBILE-FIRST, APP-LIKE)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          _scrollTo(index);
        },
        backgroundColor: isDark
            ? const Color.fromARGB(168, 26, 11, 46)
            : const Color.fromARGB(192, 218, 204, 232),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor:  isDark
            ? const Color.fromARGB(180, 255, 255, 255)
            : const Color.fromARGB(184, 0, 0, 0),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.extension),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
