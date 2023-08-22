import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projet/core/constant/routes.dart';

import 'package:projet/view/screen/auth/forget%20password/forgetpass.dart';
import 'package:projet/view/screen/auth/forget%20password/resetpassword.dart';
import 'package:projet/view/screen/auth/forget%20password/successpage.dart';

import 'package:projet/view/screen/auth/login.dart';

import 'package:projet/view/screen/auth/forget%20password/verifycode.dart';
import 'package:projet/view/screen/auth/successsignup.dart';
import 'package:projet/view/screen/auth/verifsignup.dart';
import 'package:projet/view/screen/client/blog.dart';
import 'package:projet/view/screen/client/newtickets.dart';
import 'package:projet/view/screen/client/oldtickets.dart';
import 'package:projet/view/screen/client/profile.dart';
import 'package:projet/view/screen/expert/experthomepage.dart';
import 'package:projet/view/screen/client/clienthomepage.dart';
import 'package:projet/view/screen/admin/adminhomepage.dart';
import 'package:projet/view/screen/manager/managerhomepage.dart';
import 'package:projet/view/screen/onboarding.dart';
import 'package:projet/view/screen/auth/signup.dart';
import 'package:projet/view/widget/bottomnavbar/bottom_nav_bar.dart';

import 'core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => BottomNavBar(
            screens: [
              ClientHomepage(),
              Blog(),
              NewTickets(),
              OldTickets(),
              Profile(),
            ],
          )
      // middlewares: [MyMiddleWare()],
      ),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  //auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetpassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successpage, page: () => const SuccessPassPage()),
  GetPage(name: AppRoute.successsignup, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.verifsignup, page: () => const VerfiySignUp()),
//client
  GetPage(name: AppRoute.clientHomepage, page: () => ClientHomepage()),
  GetPage(name: AppRoute.oldticket, page: () => OldTickets()),
  GetPage(name: AppRoute.blog, page: () => Blog()),
  GetPage(name: AppRoute.profile, page: () => Profile()),

  GetPage(name: AppRoute.expertHomepage, page: () => const ExpertHomepage()),

  GetPage(name: AppRoute.adminHomepage, page: () => const AdminHomepage()),
  GetPage(name: AppRoute.managerHomepage, page: () => const ManagerHomepage()),
];
