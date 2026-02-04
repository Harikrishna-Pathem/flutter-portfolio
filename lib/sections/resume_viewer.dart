import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeViewer extends StatelessWidget {
  const ResumeViewer({super.key});

  static const String resumeUrl =
      'https://drive.google.com/file/d/1ZrfEukPwlnqVVT2qIlrOiEPjQjmGIT8B/view?usp=sharing'; // 🔴 replace with real URL

  Future<void> _openResume() async {
    final uri = Uri.parse(resumeUrl);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: isDark ? const Color(0xFF1A0B2E) : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(
          children: [
            /// HEADER
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Text(
                    'Resume',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            /// BODY (PREVIEW INFO)
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.picture_as_pdf, size: 64, color: Colors.red),
                    SizedBox(height: 12),
                    Text(
                      'Resume Preview',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Opens in your browser or PDF viewer',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(height: 1),

            /// ACTIONS
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('View'),
                      onPressed: _openResume,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.download),
                      label: const Text('Download'),
                      onPressed: _openResume,
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
}
