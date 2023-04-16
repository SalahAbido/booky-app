import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/service_locator.dart';
import 'package:booky_app/feature/howe/data/repos/home_repo_impl.dart';
import 'package:booky_app/feature/howe/presentation/veiws/home_sceen.dart';
import 'package:booky_app/feature/howe/presentation/view_model/horizontal_list_cubit/horizontal_cubit.dart';
import 'package:booky_app/feature/howe/presentation/view_model/vertical_list_cubit/vertical_cubit.dart';
import 'package:booky_app/feature/search/presentation/views/search_screen.dart';
import 'package:booky_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feature/howe/presentation/veiws/book_detail_screen.dart';
import 'feature/howe/presentation/view_model/like_list_cubit/like__cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HorizontalCubit(getIt<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              VerticalCubit(getIt<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashView(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          BookDetailScreen.routeName: (context) => BlocProvider(
                create: (BuildContext context) =>
                    LikeCubit(getIt.get<HomeRepoImpl>()),
                child: const BookDetailScreen(),
              ),
          SearchScreen.routeName: (context) => const SearchScreen(),
        },
      ),
    );
  }
}
