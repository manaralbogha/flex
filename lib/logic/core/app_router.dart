import 'package:flex/ui/screens/auth/login/login_client_view.dart';
import 'package:flex/ui/screens/auth/register/register_client_view.dart';
import 'package:flex/ui/screens/choose_user/choose_user_view.dart';
import 'package:flex/ui/screens/client/client_home/client_home_view.dart';
import 'package:flex/ui/screens/client/client_order_details/client_order_details_view.dart';
import 'package:flex/ui/screens/client/client_profile/client_profile.dart';
import 'package:flex/ui/screens/client/client_setting/client_setting.dart';
import 'package:flex/ui/screens/client/client_wallet/client_wallet.dart';
import 'package:flex/ui/screens/forgot_password/forgot_password.dart';
import 'package:flex/ui/screens/provider/change%20language/providerchangelang.dart';
import 'package:flex/ui/screens/provider/home/screen/providerhomescreen.dart';
import 'package:flex/ui/screens/provider/provider%20add%20delivary%20price/providerdeliveryprice.dart';
import 'package:flex/ui/screens/provider/provider%20incoming%20masseages/providerincomingmassages.dart';
import 'package:flex/ui/screens/provider/provider%20offers/provideroffers.dart';
import 'package:flex/ui/screens/provider/provider%20order%20details/providerorderdetails.dart';
import 'package:flex/ui/screens/provider/provider%20orders/providerorders.dart';
import 'package:flex/ui/screens/provider/provider%20profile/providerprofile.dart';
import 'package:flex/ui/screens/provider/provider%20rates/providerrates.dart';
import 'package:flex/ui/screens/provider/provider%20settings/providersettings.dart';
import 'package:flex/ui/screens/provider/provider%20today%20task/providertodaytask.dart';
import 'package:flex/ui/screens/provider/provider%20wallet/screen/providerwallet.dart';
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
  static const kProviderWallet = '/providerwallet';
  static const kProviderProfile = '/providerprofile';
  static const kProviderSetting = '/providersettings';
  static const kProviderChangeLanguage = '/providerchangelang';
  static const kProviderNewOrders = '/providerorders';
  static const kProviderTodayTask = '/providertodaytask';
  static const kProviderOrderDetails = '/providerorderdetails';
  static const kProviderAddDeliveryprice = '/providerdeliveryprice';
  static const kProviderOffers = '/provideroffers';
  static const kProviderIncomingMassages = '/providerincomingmassages';
  static const kProviderRates = '/providerrates';

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
        builder: (context, state) => ProviderHomeScreen(),
      ),
      GoRoute(
        path: kClientWalletView,
        builder: (context, state) => const ClientWalletView(),
      ),
      GoRoute(
        path: kProviderWallet,
        builder: (context, state) => const ProviderWalletScreen(),
      ),
      GoRoute(
        path: kProviderWallet,
        builder: (context, state) => const ProviderWalletScreen(),
      ),
      GoRoute(
        path: kProviderProfile,
        builder: (context, state) => const ProviderProfileScreen(),
      ),
      GoRoute(
        path: kProviderSetting,
        builder: (context, state) => const ProviderSettingsScreen(),
      ),
      GoRoute(
        path: kProviderChangeLanguage,
        builder: (context, state) => const ProviderChangeLanguageScreen(),
      ),
      GoRoute(
        path: kProviderNewOrders,
        builder: (context, state) => const ProviderOrdersScreen(),
      ),
      GoRoute(
        path: kProviderTodayTask,
        builder: (context, state) => const ProviderTodayTaskScreen(),
      ),
      GoRoute(
        path: kProviderOrderDetails,
        builder: (context, state) => const ProviderOrderDeatils(),
      ),
      GoRoute(
        path: kProviderAddDeliveryprice,
        builder: (context, state) => ProviderAddDeliveryCost(),
      ),
      GoRoute(
        path: kProviderOffers,
        builder: (context, state) => const ProviderOffers(),
      ),
      GoRoute(
        path: kProviderIncomingMassages,
        builder: (context, state) => const ProviderIncomingMassages(),
      ),
      GoRoute(
        path: kProviderRates,
        builder: (context, state) => const ProviderRates(),
      ),
    ],
  );
}
