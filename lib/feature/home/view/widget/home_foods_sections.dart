import 'package:flutter/material.dart';

class HomeFoodsSection extends StatefulWidget {
  const HomeFoodsSection({super.key});

  @override
  State<HomeFoodsSection> createState() => _HomeFoodsSectionsState();
}

class _HomeFoodsSectionsState extends State<HomeFoodsSection> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: MediaQuery.of(context).size.height * 0.35,
                  margin: const EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        blurRadius: 9.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Spicy seasoned seafood noodles",
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("\$2.99", style: Theme.of(context).textTheme.bodyLarge),
                      TextButton(onPressed: () {}, child: const Text("More Info"))
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
