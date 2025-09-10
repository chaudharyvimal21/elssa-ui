import 'package:flutter/material.dart';
import 'services_screen.dart'; // <-- import your service screen

class HomeServicesScreen extends StatelessWidget {
  const HomeServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Top Location & Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on, color: Colors.black),
                  const SizedBox(width: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Home ▼",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Inner Circle, Connaught Place, New Delhi, Del...",
                        style: TextStyle(
                            fontSize: 13, color: Colors.black54),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search, size: 26),
                  )
                ],
              ),
            ),

            // 🔹 Banner Image with Services List
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ServicesScreen(),
                  ),
                );
              },
              child: Container(
                height: 250,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/mann.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ServiceText(title: "Renovation"),
                      ServiceText(title: "Handyman"),
                      ServiceText(title: "Home shifting"),
                      ServiceText(title: "Gardening"),
                      ServiceText(title: "Declutter"),
                      ServiceText(title: "Painting"),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 Grid Menu of Services
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  children: [
                    ServiceGridItem(
                      icon: Icons.home_repair_service,
                      label: "Renovation",
                      onTap: () => _navigateToServices(context),
                    ),
                    ServiceGridItem(
                      icon: Icons.handyman,
                      label: "Handyman",
                      onTap: () => _navigateToServices(context),
                    ),
                    ServiceGridItem(
                      icon: Icons.local_shipping,
                      label: "Home shifting",
                      onTap: () => _navigateToServices(context),
                    ),
                    ServiceGridItem(
                      icon: Icons.grass,
                      label: "Gardening",
                      onTap: () => _navigateToServices(context),
                    ),
                    ServiceGridItem(
                      icon: Icons.chair,
                      label: "Declutter",
                      onTap: () => _navigateToServices(context),
                    ),
                    ServiceGridItem(
                      icon: Icons.format_paint,
                      label: "Painting",
                      onTap: () => _navigateToServices(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToServices(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ServicesScreen()),
    );
  }
}

// 🔹 Custom widget for left-side banner service text
class ServiceText extends StatelessWidget {
  final String title;
  const ServiceText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.check_box_outline_blank,
              size: 18, color: Colors.white),
          const SizedBox(width: 6),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

// 🔹 Custom widget for grid items
class ServiceGridItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ServiceGridItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue.shade700),
            const SizedBox(height: 8),
            Text(label,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}