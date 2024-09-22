import 'package:take_a_bite/feature/onboarding/model/onboarding_model.dart';

class OnboardingItems {
  List<OnboardingModel> items = [
    OnboardingModel(
      title: 'Choose Your Favorite Food',
      description: 'Choose from dozens of dishes to satisfy your hunger and add it to your favorites to take a bite!',
      image: 'assets/gifs/onboarding_choose_food.gif',
    ),
    OnboardingModel(
      title: 'Place Your Order',
      description: 'Add to cart your favorite food! (Don\'t forget to add some extra cheese)',
      image: 'assets/gifs/onboarding_add_cart.gif',
    ),
    OnboardingModel(
      title: 'Your Meal is Ready!',
      description: 'Aanddd... Take a bite!',
      image: 'assets/gifs/onboarding_take_a_bite.gif',
    ),
  ];
}
