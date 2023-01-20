import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  // late final değişkenlerin değeri ilk kullanıldığında atanır.
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // widget değiştiğinde çalışır.
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
    }
    setState(() {});
    print('b');
  }

  @override
  void initState() {
    // sayfa ilk açıldığında çalışır.
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += ' Tek';
    } else {
      _message += ' Çift';
    }
  }

  @override
  void dispose() {
    // sayfadan çıktığı anda çalışır.
    super.dispose();
    print('alo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    _message = 'Emrecan';
                  });
                },
                child: Text(_message)));
  }
}
