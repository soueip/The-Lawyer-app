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
import 'package:projet/view/screen/client/offre.dart';
import 'package:projet/view/screen/client/oldtickets.dart';
import 'package:projet/view/screen/client/profile.dart';
import 'package:projet/view/screen/expert/ticketpage.dart';
import 'package:projet/view/screen/client/clienthomepage.dart';
import 'package:projet/view/screen/admin/adminhomepage.dart';
import 'package:projet/view/screen/expert/experthomepage.dart';

import 'package:projet/view/screen/manager/managerhomepage.dart';
import 'package:projet/view/screen/onboarding.dart';
import 'package:projet/view/screen/auth/signup.dart';
import 'package:projet/view/widget/client/bottomnavbarclient/bottom_navbar.dart';
import 'package:projet/view/widget/manager/bottomnavbarmanager/bottomnavbarmanager.dart';

import 'core/middleware/mymiddleware.dart';
import 'view/widget/expert/bottomnavbarexpert/bottomnavbarexpert.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const OnBoarding(),
    middlewares: [MyMiddleWare()],
  ),

  GetPage(
    name: AppRoute.bottomnavbar,
    page: () => BottomNavBarclient(
      screens: [
        ClientHomepage(),
        const Blog(),
        const OldTickets(),
        const Profile(),
      ],
    ),
  ),

  GetPage(
    name: AppRoute.bottomNavBarexpert,
    page: () => BottomNavBarexpert(
      screens: [
        ExpertHomepage(),
        TicketListPage(),
        const Profile(),
      ],
    ),
  ),
  GetPage(
    name: AppRoute.bottomNavBarmanager,
    page: () => const BottomNavBarmanager(
      screens: [
        ManagerHomepage(),
        OldTickets(),
        Profile(),
      ],
    ),
  ),
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
  GetPage(name: AppRoute.oldticket, page: () => const OldTickets()),
  GetPage(name: AppRoute.blog, page: () => const Blog()),
  GetPage(name: AppRoute.blog, page: () => Offre()),
  GetPage(name: AppRoute.profile, page: () => const Profile()),

  //GetPage(name: AppRoute.expertHomepage, page: () => ExpertHomepage()),

  GetPage(name: AppRoute.adminHomepage, page: () => const AdminHomepage()),
  GetPage(name: AppRoute.managerHomepage, page: () => const ManagerHomepage()),
];
