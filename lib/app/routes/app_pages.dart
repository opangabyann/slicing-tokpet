import 'package:get/get.dart';

import 'package:tokopedia/app/modules/createData/bindings/create_data_binding.dart';
import 'package:tokopedia/app/modules/createData/views/create_data_view.dart';
import 'package:tokopedia/app/modules/detail/bindings/detail_binding.dart';
import 'package:tokopedia/app/modules/detail/views/detail_view.dart';
import 'package:tokopedia/app/modules/homeAdmin/bindings/home_admin_binding.dart';
import 'package:tokopedia/app/modules/homeAdmin/views/home_admin_view.dart';
import 'package:tokopedia/app/modules/loginWithPhoneNumber/bindings/login_with_phone_number_binding.dart';
import 'package:tokopedia/app/modules/loginWithPhoneNumber/views/login_with_phone_number_view.dart';
import 'package:tokopedia/app/modules/otpVerif/bindings/otp_verif_binding.dart';
import 'package:tokopedia/app/modules/otpVerif/views/otp_verif_view.dart';
import 'package:tokopedia/app/modules/produk_data/bindings/produk_data_binding.dart';
import 'package:tokopedia/app/modules/produk_data/views/produk_data_view.dart';
import 'package:tokopedia/app/modules/sliderData/bindings/slider_data_binding.dart';
import 'package:tokopedia/app/modules/sliderData/views/slider_data_view.dart';
import 'package:tokopedia/app/modules/updateData/bindings/update_data_binding.dart';
import 'package:tokopedia/app/modules/updateData/views/update_data_view.dart';

import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/checkEmail/bindings/check_email_binding.dart';
import '../modules/checkEmail/views/check_email_view.dart';
import '../modules/forgotPassword/bindings/forgot_password_binding.dart';
import '../modules/forgotPassword/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHECK_EMAIL,
      page: () => CheckEmailView(),
      binding: CheckEmailBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_WITH_PHONE_NUMBER,
      page: () => LoginWithPhoneNumberView(),
      binding: LoginWithPhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIF,
      page: () => OtpVerifView(),
      binding: OtpVerifBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER_DATA,
      page: () => SliderDataView(),
      binding: SliderDataBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_DATA,
      page: () => UpdateDataView(),
      binding: UpdateDataBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_DATA,
      page: () => CreateDataView(),
      binding: CreateDataBinding(),
    ),
    GetPage(
      name: _Paths.PRODUK_DATA,
      page: () => ProdukDataView(),
      binding: ProdukDataBinding(),
    ),
  ];
}
