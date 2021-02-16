import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mifift/baseWidget.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mifift/data/data_sources/auth_source.dart';
import 'package:mifift/data/repositories/auth_repository_implementation.dart';
import 'package:mifift/domain/entities/signup_body.dart';
import 'package:mifift/domain/repositories/auth_repository.dart';
import 'package:mifift/presentation/blocs/login_cubit/login_cubit.dart';
import 'package:mifift/presentation/screens/home/home.dart';
import 'domain/entities/network_exceptions.dart';
import 'presentation/screens/splash/splash.dart';
import 'constants/app_theme.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;

void main() async {
  unawaited(getIt.init());
  AuthRespository authRepo = getIt.getItInstance<AuthRespository>();
  const Map<String, dynamic> body = {
    "firstName": "hedi",
    "lastName": "hedi",
    "username": "hhh",
    "email": "nader@ffff.nader",
    "password": "hedi",
    "role": "CLIENT"
  };
  final response = await authRepo.signIn(body["email"],body["password"]);
  response.fold((l) => print(NetworkExceptions.getErrorMessage(l.error)), (r) => print(r));
  // runApp(
  //   MaterialApp(home: MyApp()), // Wrap your app
  // );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      home: BlocProvider<LoginCubit>(
        create: (context) => getIt.getItInstance<LoginCubit>(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state){

      },
      builder: (context, state) {
        return BaseWidget(builder: (context, sizingInformation) {
          return SplashScreen();
        });
      },
    );
  }
}
