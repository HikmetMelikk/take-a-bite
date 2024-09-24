import 'package:flutter/material.dart';
import 'package:take_a_bite/feature/onboarding/onboarding_items.dart';
import 'package:take_a_bite/feature/onboarding/view/widget/onboarding_bottom_indicator.dart';
import 'package:take_a_bite/feature/onboarding/view/widget/onboarding_take_a_bite_button.dart';
import 'package:take_a_bite/product/utils/widgets/spacing.dart';

final class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

final class _OnboardingViewState extends State<OnboardingView> {
  final _onboardingItems = OnboardingItems();
  final _onboardingPageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
        child: isLastPage
            ? const TakeABiteButton()
            : OnboardingBottomIndicator(
                onboardingPageController: _onboardingPageController, onboardingItems: _onboardingItems),
      ),
      body: PageView.builder(
        onPageChanged: (index) => setState(() => isLastPage = _onboardingItems.items.length - 1 == index),
        itemCount: _onboardingItems.items.length,
        controller: _onboardingPageController,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
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
