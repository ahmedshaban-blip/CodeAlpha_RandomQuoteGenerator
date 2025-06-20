import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
=======
>>>>>>> 258b4deb08649c15a0aebf93e1788246285b1c30
import 'cubit/quote_cubit.dart';
import 'cubit/quote_state.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

<<<<<<< HEAD
  void _copyToClipboard(BuildContext context, String quote) {
    Clipboard.setData(ClipboardData(text: quote));
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Quote copied to clipboard')));
  }

  void _shareQuote(String quote) {
    Share.share(quote);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        final fullQuote = '"${state.text}"\n- ${state.author}';

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepPurple.shade300, Colors.deepPurple.shade50],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 600),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          transitionBuilder:
                              (child, animation) => FadeTransition(
                                opacity: animation,
                                child: child,
                              ),
                          child: Text(
                            '"${state.text}"',
                            key: ValueKey(state.text),
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        AnimatedSwitcher(
                          duration: Duration(milliseconds: 500),
                          transitionBuilder:
                              (child, animation) => SlideTransition(
                                position: Tween<Offset>(
                                  begin: Offset(0.0, 0.5),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '- ${state.author}',
                              key: ValueKey(state.author),
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed:
                                  () => _copyToClipboard(context, fullQuote),
                              icon: Icon(Icons.copy),
                              tooltip: 'Copy',
                            ),
                            SizedBox(width: 16),
                            IconButton(
                              onPressed: () => _shareQuote(fullQuote),
                              icon: Icon(Icons.share),
                              tooltip: 'Share',
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            onPressed:
                                () =>
                                    context.read<QuoteCubit>().generateQuote(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              padding: EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              elevation: 4,
                            ),
                            icon: Icon(Icons.refresh, color: Colors.white),
                            label: Text(
                              "New Quote",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
=======
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Random Quote Generator'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: Text(
                    '"${state.text}"',
                    key: ValueKey(state.text),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(height: 20),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) => SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0.0, 0.5),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  ),
                  child: Text(
                    '- ${state.author}',
                    key: ValueKey(state.author),
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => context.read<QuoteCubit>().generateQuote(),
                  child: Text("New Quote"),
                ),
              ],
>>>>>>> 258b4deb08649c15a0aebf93e1788246285b1c30
            ),
          ),
        );
      },
    );
  }
}
