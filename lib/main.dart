import 'dart:io';

import 'package:champions_league_2023/app/app_experience.dart';
import 'package:champions_league_2023/common/ui/src/res/cl_theme.dart';
import 'package:champions_league_2023/features/home/src/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'common/ui/src/res/network/http_overrides.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Provider<HomePageBloc>(create: (_) => HomePageBloc()),
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: CLTheme.light,
        home: const AppExperience(),
      ),
    );
  }
}
