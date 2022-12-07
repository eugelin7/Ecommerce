import 'package:ecommerce/logic/cart_cubit.dart';
import 'package:ecommerce/logic/favs_cubit.dart';
import 'package:ecommerce/ui/screens/cart_screen.dart';
import 'package:ecommerce/ui/screens/main_screen.dart';
import 'package:ecommerce/ui/screens/product_screen.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FavsCubit()),
        BlocProvider(create: (_) => CartCubit()),
      ],
      child: EcommerceApp(),
    ),
  );
}

class EcommerceApp extends StatelessWidget {
  EcommerceApp({super.key});

  final _router = GoRouter(
    initialLocation: MainScreen.path,
    routes: [
      GoRoute(
        name: MainScreen.name,
        path: MainScreen.path,
        builder: (_, __) => const MainScreen(),
      ),
      GoRoute(
        name: ProductScreen.name,
        path: ProductScreen.path,
        builder: (_, __) => const ProductScreen(),
      ),
      GoRoute(
        name: CartScreen.name,
        path: CartScreen.path,
        builder: (_, __) => const CartScreen(),
      ),
    ],
    //debugLogDiagnostics: true,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: ThemeColors.kAccentColor,
        ),
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'MarkPro',
            ),
      ),
    );
  }
}
