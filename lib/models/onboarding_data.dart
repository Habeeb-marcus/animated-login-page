class OnboardingData {
  final String title;
  final String description;
  final String imageSrc;

  OnboardingData({
    this.title = '',
    this.description = '',
    this.imageSrc = '',
  });
}

List<OnboardingData> onboardingData = [
  OnboardingData(
    title: 'Bite-sized learning. No more learning for hours at a stretch ๐',
    description:
        'Study each note in 5 minute or less. Learn in-between commutes, meals, random strolls etc',
    imageSrc: 'assets/images/onboardingOne.png',
  ),
  OnboardingData(
    title: 'Thousands of questions at your fingertips ๐ฏ',
    description:
        'Instantly test your knowledge of any concept, right after studying the concept.',
    imageSrc: 'assets/images/onboardingTwo.png',
  ),
  OnboardingData(
    title: 'Tend to forget stuff you read, after a while? ๐ค',
    description:
        'We would always refresh your memory of concepts you learnt earlier. No more forgetting.',
    imageSrc: 'assets/images/onboardingThree.png',
  ),
  OnboardingData(
    title: 'Learning can be as lit as social media & games ๐๐ผ',
    description:
        'Weโve got study streaks for you to measure your progress and compete',
    imageSrc: 'assets/images/onboardingFour.png',
  ),
  OnboardingData(
    title: 'Thereโs more to life than studying non-stop every single day ๐๐ผ',
    description:
        'Feel free to take a break anytime and weโd remind you later to continue studying',
    imageSrc: 'assets/images/onboardingFive.png',
  ),
  OnboardingData(
    title: 'We present to you: The best way to learn on-the-go ๐คณ๐ผ',
    description: 'Nobody should have to haul laptops around, to study anything',
    imageSrc: 'assets/images/onboardingSix.png',
  ),
];
