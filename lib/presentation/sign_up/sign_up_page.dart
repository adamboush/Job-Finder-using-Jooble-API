import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:job_finder/presentation/sign_up/widgets/sign_up_form.dart';

import '../../injection.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignUpBloc>(),
          )
        ],
        child: SignUpForm(),
      ),
    );
  }
}
