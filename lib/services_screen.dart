import 'package:flutter/material.dart';
import 'whychooseus_screen.dart'; // <-- import the WhyChooseUsScreen

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Popular Services Section
              const Text(
                "Popular Services",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ServiceCard(
                      image: "assets/images/kitchen.jpg",
                      title: "Kitchen Cleaning",
                    ),
                    ServiceCard(
                      image: "assets/images/sofa.jpg",
                      title: "Sofa Cleaning",
                    ),
                    ServiceCard(
                      image: "assets/images/full.jpg",
                      title: "Full House",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Cleaning Services Section
              const Text(
                "Cleaning Services",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ServiceCard(
                      image: "assets/images/kitchen1.jpeg",
                      title: "Kitchen Cleaning",
                    ),
                    ServiceCard(
                      image: "assets/images/sofa1.jpg",
                      title: "Sofa Cleaning",
                    ),
                    ServiceCard(
                      image: "assets/images/full1.jpg",
                      title: "Full House",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 Button to go to WhyChooseUsScreen
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WhyChooseUsScreen()),
                    );
                  },
                  child: const Text("Why Choose Us"),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Widget for horizontal service card
class ServiceCard extends StatelessWidget {
  final String image;
  final String title;

  const ServiceCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}