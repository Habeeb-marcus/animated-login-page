// import 'package:flutter/material.dart';
// import 'package:mEd/components/home/footnote_bottomsheet.dart';
// import 'package:mEd/components/home/webview_bottomsheet.dart';
// import 'package:mEd/helpers/dialog_helpers/dialog_manager.dart';
// import 'package:mEd/models/folder_model.dart';
// import 'package:mEd/screens/authentication/forgotPassword/forgot_password.dart';
// import 'package:mEd/screens/authentication/forgotPassword/reset_password.dart';
// import 'package:mEd/screens/authentication/login/login.dart';

// import 'package:mEd/screens/authentication/signUp/signup_email.dart';
// import 'package:mEd/screens/authentication/signUp/signup_otp.dart';
// import 'package:mEd/screens/authentication/signUp/signup_phone_number.dart';
// import 'package:mEd/screens/authentication/signUp/signup_username.dart';
// import 'package:mEd/screens/dashboard.dart';
// import 'package:mEd/screens/home/continue_reading_folder_page.dart';
// import 'package:mEd/screens/home/file_page.dart';
// import 'package:mEd/screens/home/home_page.dart';
// import 'package:mEd/screens/more/more_page.dart';
// import 'package:mEd/screens/more/note_streak.dart';
// import 'package:mEd/screens/more/file_streak.dart';
// import 'package:mEd/screens/more/folder_streak.dart';
// import 'package:mEd/screens/more/referral_page.dart';
// import 'package:mEd/screens/onboarding/index.dart';
// import 'package:mEd/screens/home/folder_page.dart';
// import 'package:mEd/screens/home/note_page.dart';
// import 'package:mEd/screens/home/search_page.dart';
// import 'package:mEd/screens/home/questions/questions_page.dart';
// import 'package:page_transition/page_transition.dart';

// class RouteHelper {
//   static const String signUpWithEmailRoute = "SignUpWithEmail";
//   static const String signUpUsernameRoute = "SignUpUsername";
//   static const String signUpOtpRoute = "SignUpOtp";
//   static const String signUpPhoneNumberRoute = "SignUpPhoneNumber";
//   static const String forgotPasswordRoute = "ForgotPassword";
//   static const String folderPageRoute = "FolderPage";
//   static const String subFolderPageRoute = "SubFolderPage";
//   static const String filePageRoute = "FilePage";
//   static const String notePageRoute = "NotePage";
//   static const String questionPageRoute = "QuestionPage";
//   static const String resetPasswordRoute = "ResetPassword";
//   static const String loginRoute = "Login";
//   static const String homeRoute = "Home";
//   static const String moreRoute = "More";
//   static const String searchPageRoute = "Search";
//   static const String dashboardRoute = "Dashboard";
//   static const String onboardingRoute = "Onboarding";
//   static const String noteStreakRoute = "NoteStreak";
//   static const String fileStreakRoute = "FileStreak";
//   static const String folderStreakRoute = "FolderStreak";
//   static const String referralRoute = "Referral";
//   static const String fotnoteRoute = "Footnote";
//   static const String webviewRoute = "Webview";

//   Route<dynamic>? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case signUpWithEmailRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.bottomToTop,
//           routeName: settings.name!,
//           viewToShow: const SignUpWithEmailPage(),
//         );
//       case signUpUsernameRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.rightToLeft,
//           routeName: settings.name!,
//           viewToShow: const SignUpUsernamePage(),
//         );
//       case signUpPhoneNumberRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.rightToLeft,
//           routeName: settings.name!,
//           viewToShow: const SignUpPhoneNumberPage(),
//         );
//       case signUpOtpRoute:
//         String? phoneNumber = settings.arguments as String?;
//         return _getTransistionPageRoute(
//           type: PageTransitionType.rightToLeft,
//           routeName: settings.name!,
//           viewToShow: SignUpOtpPage(
//             phoneNumber: phoneNumber ?? "",
//           ),
//         );
//       case forgotPasswordRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.bottomToTop,
//           routeName: settings.name!,
//           viewToShow: const ForgotPasswordPage(),
//         );
//       case resetPasswordRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.rightToLeft,
//           routeName: settings.name!,
//           viewToShow: const ResetPasswordPage(),
//         );
//       case homeRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const HomePage(),
//         );
//       case loginRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.rightToLeft,
//           routeName: settings.name!,
//           viewToShow: const LoginPage(),
//         );
//       case moreRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const MorePage(),
//         );
//       case dashboardRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.bottomToTop,
//           routeName: settings.name!,
//           viewToShow: const Dashboard(),
//         );
//       case searchPageRoute:
//         return _getTransistionPageRoute(
//           type: PageTransitionType.bottomToTop,
//           routeName: settings.name!,
//           viewToShow: const Search(),
//         );

//       case onboardingRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const OnboardingView(),
//         );
//       case noteStreakRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const NoteStreak(),
//         );

//       case fileStreakRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const FileStreak(),
//         );

//       case folderStreakRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           // viewToShow: const ReferralPage(),
//           viewToShow: const FolderStreak(),
//         );

//       case referralRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const ReferralPage(),
//         );

//       case folderPageRoute:
//         FolderModel? folderModel = settings.arguments as FolderModel?;
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: FolderPage(
//             folder: folderModel ?? const FolderModel(),
//           ),
//         );
//       case subFolderPageRoute:
//         FolderModel? folderModel = settings.arguments as FolderModel?;
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: ContinueReadingFolderPage(
//             folder: folderModel ?? const FolderModel(),
//           ),
//         );

//       case filePageRoute:
//         FolderModel? file = settings.arguments as FolderModel?;
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: FilePage(
//             file: file ?? const FolderModel(),
//           ),
//         );
//       case questionPageRoute:
//         List<String>? questions = settings.arguments as List<String>?;
//         return _getTransistionPageRoute(
//           type: PageTransitionType.bottomToTop,
//           routeName: settings.name!,
//           viewToShow: QuestionPage(
//             questionIds: questions ?? [],
//           ),
//         );
//       case notePageRoute:
//         final data = settings.arguments as Map<String, dynamic>;
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: NotePage(
//             note: data['note'] as FolderModel,
//             notes: data['notes'] as List<FolderModel>,
//             currentIndex: data['currentIndex'] as int,
//           ),
//         );
//       case fotnoteRoute:
//         return _getPageRoute(
//           routeName: settings.name!,
//           viewToShow: const FootNoteBottomSheet(),
//         );
//       case webviewRoute:
//         return _getPageRoute(
//             routeName: settings.name!, viewToShow: const WebViewBottomSheet());
//       default:
//         return MaterialPageRoute(
//             builder: (_) => Scaffold(
//                   body: Center(
//                       child: Text('No route defined for ${settings.name}')),
//                 ));
//     }
//   }

//   PageRoute _getPageRoute(
//       {required String routeName, required Widget viewToShow}) {
//     return MaterialPageRoute(
//         settings: RouteSettings(
//           name: routeName,
//         ),
//         builder: (_) => DialogManager(child: viewToShow));
//   }

//   PageRoute _getTransistionPageRoute({
//     required String routeName,
//     required Widget viewToShow,
//     PageTransitionType type = PageTransitionType.bottomToTop,
//   }) {
//     return PageTransition(
//         settings: RouteSettings(
//           name: routeName,
//         ),
//         type: type,
//         child: DialogManager(child: viewToShow));
//   }
// }
