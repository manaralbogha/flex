import 'package:flex/ui/screens/auth/login/login_client_view.dart';
import 'package:flex/ui/screens/auth/register/register_client_view.dart';
import 'package:flex/ui/screens/choose_user/choose_user_view.dart';
import 'package:flex/ui/screens/client/client_home/client_home_view.dart';
import 'package:flex/ui/screens/client/client_wallet/client_wallet.dart';
import 'package:flex/ui/screens/forgot_password/forgot_password.dart';
import 'package:flex/ui/screens/client/client_profile/client_profile.dart';
import 'package:flex/ui/screens/client/client_order_details/client_order_details_view.dart';
import 'package:flex/ui/screens/client/client_setting/client_setting.dart';
import 'package:flex/ui/screens/provider/home/screen/providerhomescreen.dart';
import 'package:flex/ui/screens/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeClientView = '/HomeClientView';
  static const kLoginClientView = '/LoginClientView';
  static const kRegisterClientView = '/RegisterClientView';
  static const kChooseUserView = '/ChooseUserView';
  static const kForgotPasswordView = '/ForgotPasswordView';
  static const kOrderDetailsView = '/OrderDetailsView';
  static const kproviderHomescren = "/providerhomescreen";
  static const kClientOrderDetailsView = '/ClientOrderDetailsView';
  static const kClientProfileView = '/ClientProfileView';
  static const kClientSettingView = '/ClientSettingView';
  static const kClientWalletView = '/ClientWalletView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeClientView,
        builder: (context, state) => const HomeClientView(),
      ),
      GoRoute(
        path: kLoginClientView,
        builder: (context, state) => const LoginClientView(),
      ),
      GoRoute(
        path: kRegisterClientView,
        builder: (context, state) => const RegisterClientView(),
      ),
      GoRoute(
        path: kChooseUserView,
        builder: (context, state) => const ChooseUserView(),
      ),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => const ForgotPasswordView(),
      ),
      GoRoute(
        path: kClientOrderDetailsView,
        builder: (context, state) => const ClientOrderDetailsView(),
      ),
      GoRoute(
        path: kClientProfileView,
        builder: (context, state) => const ClientProfileView(),
      ),
      GoRoute(
        path: kClientSettingView,
        builder: (context, state) => const ClientSettingView(),
      ),
      GoRoute(
        path: kproviderHomescren,
        builder: (context, state) => const ProviderHomeScreen(),
      ),
      GoRoute(
        path: kClientWalletView,
        builder: (context, state) => const ClientWalletView(),
      ),
    ],
  );
}
