import 'package:flutter_bloc/flutter_bloc.dart';
import 'quote_state.dart';
import 'dart:math';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteState(text: '', author: '')) {
    generateQuote();
  }

  final List<Map<String, String>> _quotes = [
    {"text": "Be yourself; everyone else is already taken.", "author": "Oscar Wilde"},
    {"text": "The only way to do great work is to love what you do.", "author": "Steve Jobs"},
    {"text": "In the middle of difficulty lies opportunity.", "author": "Albert Einstein"},
    {"text": "Life is what happens when you're busy making other plans.", "author": "John Lennon"},
    {"text": "Happiness is not something ready made. It comes from your own actions.", "author": "Dalai Lama"},
  ];

  void generateQuote() {
    final random = Random().nextInt(_quotes.length);
    final quote = _quotes[random];

    emit(QuoteState(text: quote['text']!, author: quote['author']!));
  }
}
