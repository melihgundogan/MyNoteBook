import 'package:get/route_manager.dart';
import 'package:my_note_book/views/add_notes/add_notes_page.dart';
import 'package:my_note_book/views/home/home_page.dart';
import 'package:my_note_book/views/login/login_page.dart';
import 'package:my_note_book/views/register/register_page.dart';

List<GetPage> getPages = [
  GetPage(name: RegisterPage.routeName, page: () => RegisterPage()),
  GetPage(name: LoginPage.routeName, page: () => LoginPage()),
  GetPage(name: HomePage.routeName, page: () => HomePage()),
  GetPage(name: AddNotesPage.routeName, page: () => AddNotesPage()),
];
