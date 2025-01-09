import '../../core/theme/app_assets.dart';

class OnboardingData {
  final String imagePath;
  final String title;
  final String description;

  OnboardingData({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

final List<OnboardingData> onboardingData = [
  OnboardingData(
    imagePath: AppAssets.onboardImage1,
    title: 'All-In-One Solution for Your Team\'s Performance',
    description:
        'Discover your new app designed to manage and analyze your players\' technical, physical, and mental performance effortlessly.',
  ),
  OnboardingData(
    imagePath: AppAssets.onboardImage1,
    title: 'Smarter Decisions with Data',
    description:
        'Access key statistics and insights about your team with recommendations and predictions to enhance performance.',
  ),
  OnboardingData(
    imagePath: AppAssets.onboardImage1,
    title: 'Your Team Dashboard, Simplified',
    description:
        'Track player performance, analyze details, and make confident decisions—all from one place.',
  ),
];
