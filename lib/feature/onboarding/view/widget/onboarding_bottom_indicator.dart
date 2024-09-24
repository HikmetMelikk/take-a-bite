import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:take_a_bite/feature/onboarding/onboarding_items.dart';

final class OnboardingBottomIndicator extends StatelessWidget {
  const OnboardingBottomIndicator({
    super.key,
    required PageController onboardingPageController,
    required OnboardingItems onboardingItems,
  })  : _onboardingPageController = onboardingPageController,
        _onboardingItems = onboardingItems;

  final PageController _onboardingPageController;
  final OnboardingItems _onboardingItems;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child: const Text("Next"),
        ),
      ],
    );
  }
}
