import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'quote_page.dart';
import 'cubit/quote_cubit.dart';

void main() {
  runApp(RandomQuoteApp());
}

class RandomQuoteApp extends StatelessWidget {
  const RandomQuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuoteCubit(),
      child: MaterialApp(
        title: 'Random Quote Generator',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: QuotePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
