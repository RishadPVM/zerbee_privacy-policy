import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
   PrivacyPolicyPage({super.key});

  // List of privacy policy sections
  final List<Map<String, dynamic>> policySections = [
    {
      'title': 'Privacy Policy',
      'content':
          'Zerbee ("we," "our," or "us") values your privacy and is dedicated to protecting your personal information. '
              'This Privacy Policy outlines how we collect, use, and share your information when you use our services.\n\n'
              'This policy applies to the Zerbee platform, its associated subdomains, and other related services (collectively, our "Service"). '
              'By using our Service, you acknowledge that you’ve read, understood, and agree to this Privacy Policy and our Terms of Service.',
    },
    {
      'title': 'Definitions and Key Terms',
      'content': 'To clarify terms used in this Privacy Policy, each of the following is defined as follows:\n'
          '• Cookie: A small piece of data generated by a website and saved by your web browser, used to identify your browser, provide analytics, and remember information about you, such as your language preference or login information.\n'
          '• Country: The jurisdiction where Zerbee or its owners/founders are based, in this case, India.\n'
          '• Customer: Refers to the individual who signs up to use the Zerbee Service to manage and facilitate booking appointments at salons, beauty parlours, and other grooming service providers.\n'
          '• Personnel: Refers to individuals employed by Zerbee or contracted to perform services on behalf of the Company.\n'
          '• Personal Data: Any information that directly, indirectly, or in combination with other information (including a personal identification number) allows for the identification or identifiability of a natural person.\n'
          '• Service: The specific offerings provided by Zerbee as described on the platform or in related terms.\n'
          '• Third-Party Service: Refers to advertisers, contest sponsors, promotional and marketing partners, and others whose products or services may be of interest to you.\n'
          '• App/Application: The Zerbee app or software product described herein.',
    },
    {
      'title': 'What Information Do We Collect?',
      'content':
          'We collect information from you when you visit our app, register on our platform, respond to a survey, or fill out a form. This may include:\n'
              '• Phone Numbers \n'
              '• Email Addresses\n\n'
              'We also collect certain mobile device information for a better user experience, though these features are completely optional:\n'
              '• Location (GPS): Used to create a more accurate representation of your interests, helping to provide targeted and relevant offerings.\n'
              '• Camera (Pictures): Allows users to upload pictures directly from the app, though camera access can be denied.\n'
              '• Notifications: Enabling notifications allows you to receive alerts from the app, though notification permissions can also be denied.',
    },
    {
      'title': 'How Do We Use the Information We Collect?',
      'content':
          'The information we collect from you may be utilized in several ways, including:\n'
              '• Personalizing Your Experience: Your information helps us tailor our services to better meet your individual needs.\n'
              '• Improving Our App: We continually strive to enhance our app offerings based on the feedback and information we receive from you.\n'
              '• Enhancing Customer Service: Your information enables us to respond more effectively to customer service requests and support needs.\n'
              '• Ensure the security and functionality of the app: Ensuring the app\'s safety and smooth operation.\n'
              '• Manage your bookings and appointments: Managing your bookings and communicating updates.',
    },
    {
      'title': 'Your Rights',
      'content':
          'You have the right to: \n'
              '• Access the personal information we hold about you.\n'
              '• Request correction of inaccuracies in your data.\n'
              '• Request deletion of your personal data.\n\n'
              'To exercise these rights, contact us at: [Insert Contact Information].',
    },
    {
      'title': 'Kids\' Privacy',
      'content':
          'We prioritize the safety and privacy of children under the age of 13. We do not knowingly collect personal information from children without parental consent. '
              'If you are a parent or guardian and believe that your child has provided us with personal data without your permission, please contact us immediately. '
              'Upon becoming aware of such information, we will take appropriate steps to remove it from our servers.',
    },
    {
      'title': 'Changes to This Privacy Policy',
      'content':
          'We may update this Privacy Policy from time to time. When we do, we will notify you by revising the effective date at the top of this policy. '
              'We encourage you to review this policy periodically to stay informed about how we are protecting your information.',
    },
    {
      'title': 'Contact Us',
      'content': 'If you have any questions or concerns about this Privacy Policy, please contact us at:\n\n[zerbeepvt@gmail.com].',
    },
  ];

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy Policy')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: policySections
                .map((section) =>
                    _buildSection(section['title'] as String, section['content'] as String))
                .toList(),
          ),
        ),
      ),
    );
  }
}
