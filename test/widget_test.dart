// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:blitetaskintern/shared/components/blue_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:blitetaskintern/main.dart';

void main() {
  testWidgets('deve conter um titulo e um subtitulo',
      (WidgetTester tester) async {
    final titleFinder = find.text('oi');
    final subtitleFinder = find.text('tudo bem?');
    // Build our app and trigger a frame.
    await tester.pumpWidget(Scaffold(
      body: Center(
        child: BlueCardWidget(title: 'oi', subtitle: 'tudo bem?', image: ''),
      ),
    ));

    expect(titleFinder, findsOneWidget);
    expect(subtitleFinder, findsOneWidget);
  });
}
