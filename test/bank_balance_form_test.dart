import 'package:campus/bank_account.dart';
import 'package:campus/bank_balance_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

main() {
  testWidgets('', (tester) async {
    BankAccount account = BankAccount(200.00);
    await tester.pumpWidget(ChangeNotifierProvider.value(
        value: account,
        child: const MaterialApp(home: Material(child: BankBalanceForm()))));

    expect(find.byType(TextField), findsOneWidget);
  });
}
