import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:take_a_bite/feature/onboarding/onboarding_items.dart';
import 'package:take_a_bite/product/utils/widgets/spacing.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final _onboardingItems = OnboardingItems();
  final _onboardingPageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: isLastPage
            ? takeABiteButton(context)
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () => _onboardingPageController.jumpToPage(_onboardingItems.items.length - 1),
                      child: const Text("Skip")),
                  SmoothPageIndicator(
                    controller: _onboardingPageController,
                    count: _onboardingItems.items.length,
                    onDotClicked: (index) => _onboardingPageController.animateToPage(
                      index,
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 300),
                    ),
                    effect: WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  TextButton(
                      onPressed: () => _onboardingPageController.nextPage(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 300),
                          ),
                      child: const Text("Next")),
                ],
              ),
      ),
      body: PageView.builder(
        onPageChanged: (index) => setState(() => isLastPage = _onboardingItems.items.length - 1 == index),
        itemCount: _onboardingItems.items.length,
        controller: _onboardingPageController,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(_onboardingItems.items[index].image),
                const SpacingBox(),
                Text(
                  _onboardingItems.items[index].title,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SpacingBox(
                  height: 50,
                ),
                Text(
                  _onboardingItems.items[index].description,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget takeABiteButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () async {
      final isOnboardingShow = await SharedPreferences.getInstance();
      isOnboardingShow.setBool("isOnboardingShow", true);
      if (!context.mounted) return;
      context.goNamed("auth");
    },
    child: const Text("Take a bite"),
  );
}
