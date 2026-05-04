import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app/config/bloc/bloc_observer.dart';
import 'app/config/dependence_injection/injection.dart';
import 'my_app.dart';

void main() {
  configureDependencies();
  Bloc.observer = TripBlocObserver();
  runApp(const MyApp());
}