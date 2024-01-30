import 'package:campus/spending_event.dart';
import 'package:campus/spending_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('', (tester) async {
    List<SpendingEvent> events = [
      SpendingEvent('a', 'b', 3, DateTime(2024, 1, 22))
    ];
    await tester.pumpWidget(
        MaterialApp(home: Material(child: SpendingHistory(events))));

    expect(find.text('a'), findsOneWidget);
    expect(find.text('b'), findsOneWidget);
    expect(find.textContaining('3'), findsOneWidget);
    expect(find.textContaining('2024'), findsOneWidget);
  });
}
