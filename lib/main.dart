import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/features/flutter_localization/presentation/cubit/cubit.dart';
import 'package:flutter_localization/my_app.dart';

void main() {

  runApp(
    
    BlocProvider(
      create: (_) => LocaleCubit(), 
       child: const MyApp(),
       ),
      );
}
