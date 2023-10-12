import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mock_store/core/bindings.dart';
import 'package:mock_store/presentation/screens/product_list_screen.dart';

void main() => runApp(const MockStore());

class MockStore extends StatelessWidget {
  const MockStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mock Store',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red[800],
        hintColor: Colors.amber,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          toolbarTextStyle: GoogleFonts.lato(
            fontSize: 16.0,
            color: Colors.white,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red[800],
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      initialRoute: '/products',
      getPages: [
        GetPage(name: '/products', page: () => const ProductListScreen()),
      ],
      initialBinding: AppBindings(),
    );
  }
}
