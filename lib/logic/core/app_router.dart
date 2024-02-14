import 'package:flex/ui/screens/auth/login/login_client_view.dart';
import 'package:flex/ui/screens/auth/register/register_client_view.dart';
import 'package:flex/ui/screens/choose_user/choose_user_view.dart';
import 'package:flex/ui/screens/client/order_details/order_details.dart';
import 'package:flex/ui/screens/forgot_password/forgot_password.dart';
import 'package:flex/ui/screens/client/home/home_view.dart';
import 'package:flex/ui/screens/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeClientView = '/HomeClientView';
  static const kLoginClientView = '/LoginClientView';
  static const kRegisterClientView = '/RegisterClientView';
  static const kChooseUserView = '/ChooseUserView';
  static const kForgotPasswordView = '/ForgotPasswordView';
  static const kOrderDetailsView = '/OrderDetailsView';

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
        path: kOrderDetailsView,
        builder: (context, state) => const OrderDetailsView(),
      ),
    ],
  );
}
