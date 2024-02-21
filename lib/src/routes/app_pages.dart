import 'package:fast_shop/src/views/FAQs/Account_shopping_FAQs_screen.dart';
import 'package:fast_shop/src/views/FAQs/Cancellation_Faq_screen.dart';
import 'package:fast_shop/src/views/Notification_screen.dart';
import 'package:fast_shop/src/views/Payment_other_screens/Referal_screen.dart';
import 'package:fast_shop/src/views/Return_cancellation/Cancellation_success_screen.dart';
import 'package:fast_shop/src/views/FAQs/Customer_care_screen.dart';
import 'package:fast_shop/src/views/Main_pages/My_Account_screen.dart';
import 'package:fast_shop/src/views/Orders_returns_list/My_orders_screen.dart';
import 'package:fast_shop/src/views/Orders_returns_list/My_returns_screen.dart';
import 'package:fast_shop/src/views/Orders_returns_list/Order_screen.dart';
import 'package:fast_shop/src/views/FAQs/Payment_FAQs.dart';
import 'package:fast_shop/src/views/Payment_other_screens/Payments_screen.dart';
import 'package:fast_shop/src/views/FAQs/Return_FAQs_Screen.dart';
import 'package:fast_shop/src/views/Return_cancellation/Request_cancellation_screen.dart';
import 'package:fast_shop/src/views/Return_cancellation/Return_product_reason_screen.dart';
import 'package:fast_shop/src/views/Return_cancellation/Return_sucess_screen.dart';
import 'package:fast_shop/src/views/FAQs/Shipping_Faqs_screen.dart';
import 'package:fast_shop/src/views/Shipping_pages/Shipping_address_pickup.dart';
import 'package:fast_shop/src/views/Main_pages/Wishlist_screen.dart';
import 'package:fast_shop/src/views/Orders_returns_list/billing_pur_screen.dart';
import 'package:fast_shop/src/views/Auth/forgot_password_screen.dart';
import 'package:fast_shop/src/views/FAQs/gift_card_FAQs.dart';
import 'package:fast_shop/src/views/Auth/home_screen.dart';
import 'package:fast_shop/src/views/Auth/login_screen.dart';
import 'package:fast_shop/src/views/navigation_bar.dart';
import 'package:fast_shop/src/views/Auth/otp_auth_screen.dart';
import 'package:fast_shop/src/views/Auth/reset_password_screen.dart';
import 'package:fast_shop/src/views/Payment_other_screens/saved_card_screen.dart';
import 'package:fast_shop/src/views/splash_screen.dart';
import 'package:fast_shop/src/views/Main_pages/welcome_screen.dart';
import 'package:get/get.dart';
import '../views/Shipping_pages/Shipping_address_delivery.dart';
import '../views/Auth/registration_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Paths.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Paths.REGISTER,
      page: () => const RegistrationScreen(),
    ),
    GetPage(
      name: Paths.LOGIN,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: Paths.FORGOT,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: Paths.OTPAUTH,
      page: () => const OTPAuthScreen(),
    ),
    GetPage(
      name: Paths.RESET,
      page: () => const ResetPasswordScreen()
    ),
    GetPage(
      name: Paths.HOME,
      page: () => const HomeScreen()
    ),
    GetPage(
      name: Paths.SHPFAQ,
      page: () => const ShippingFAQ()
    ),
    GetPage(
      name: Paths.SHPADD,
      page: () => const ShippingAddress()
    ),
    GetPage(
      name: Paths.SHPADDPICK,
      page: () => const ShippingAddressPickup()
    ),
    GetPage(
      name: Paths.RETFAQ,
      page: () => const ReturnFAQ()
    ),
    GetPage(
      name: Paths.PAYFAQ,
      page: () => const PaymentFAQs()
    ),
    GetPage(
      name: Paths.MYACC,
      page: () => const MyAccountScreen()
    ),
     GetPage(
      name: Paths.NAV,
      page: () => NavigationScreen()
    ),
    GetPage(
      name: Paths.WLST,
      page: () => const WishListScreen()
    ),
    GetPage(
      name: Paths.PYNT,
      page: () => const PaymentScreen()
    ),
    GetPage(
      name: Paths.CSTCR,
      page: () => const CustomerCareScreen()
    ),
    GetPage(
      name: Paths.ACFAQ,
      page: () => const AccountShoppingFaqScreen()
    ),
    GetPage(
      name: Paths.GFTFAQ,
      page: () => const GiftCardFAQs()
    ),
    GetPage(
      name: Paths.SDCD,
      page: () => const SavedCardsScreen()
    ),
    GetPage(
      name: Paths.CALFQ,
      page: () => const CancellationFaqscreen()
    ),
    GetPage(
      name: Paths.BLP,
      page: () => const BillingpurScreen()
    ),
    GetPage(
      name: Paths.MORD,
      page: () => const MyOrdersScreen()
    ),
    GetPage(
      name: Paths.ORD,
      page: () => const Ordersscreen(ordid: '',)
    ),
    GetPage(
      name: Paths.MRET,
      page: () => const MyreturnsScreen()
    ),
    GetPage(
      name: Paths.CANS,
      page: () => const RequestCancellationSucessScreen()
    ),
    GetPage(
      name: Paths.RSAS,
      page: () => const ReturnSucessScreen()
    ),
    GetPage(
      name: Paths.WEHM,
      page: () => const WeclomeHomeScreen()
    ),
     GetPage(
      name: Paths.REFE,
      page: () => const ReferalScreen()
    ),
     GetPage(
      name: Paths.NOTI,
      page: () => const NotificationScreen()
    ),
     GetPage(
      name: Paths.REQCAN,
      page: () => const Returncancellationscreen()
    ),
     GetPage(
      name: Paths.RRES,
      page: () => const Returnproductreasonscreen()
    ),
  ];
}