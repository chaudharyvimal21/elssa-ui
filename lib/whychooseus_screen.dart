import 'package:flutter/material.dart';
import 'safetymeasures_screen.dart'; // <-- import SafetyMeasuresScreen

class WhyChooseUsScreen extends StatelessWidget {
  const WhyChooseUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Section Title
              Row(
                children: const [
                  Icon(Icons.verified_user, color: Colors.black87),
                  SizedBox(width: 8),
                  Text(
                    "Why Choose Us",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // 🔹 Card 1
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SafetyMeasuresScreen(),
                    ),
                  );
                },
                child: const WhyChooseCard(
                  icon: "assets/images/quality.png",
                  title: "Quality Assurance",
                  subtitle: "Your satisfaction is guaranteed",
                ),
              ),
              const SizedBox(height: 30),

              // 🔹 Card 2
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SafetyMeasuresScreen(),
                    ),
                  );
                },
                child: const WhyChooseCard(
                  icon: "assets/images/fixed.png",
                  title: "Fixed Prices",
                  subtitle:
                      "No hidden costs, all the prices are known and fixed before booking",
                ),
              ),
              const SizedBox(height: 30),

              // 🔹 Card 3
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SafetyMeasuresScreen(),
                    ),
                  );
                },
                child: const WhyChooseCard(
                  icon: "assets/images/hassel.png",
                  title: "Hassle free",
                  subtitle: "Convenient, time saving and secure",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Custom Card Widget
class WhyChooseCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const WhyChooseCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Icon
          Image.asset(icon, height: 40, width: 40),

          const SizedBox(width: 12),

          // Title + Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}