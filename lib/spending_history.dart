import 'package:flutter/material.dart';
import 'spending_event.dart';

class SpendingHistory extends StatelessWidget {
  final List<SpendingEvent> _spendingEvents;
  const SpendingHistory(this._spendingEvents, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _spendingEvents.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Text(_spendingEvents[index].category),
          title: Text(_spendingEvents[index].merchant),
          subtitle: Text('${_spendingEvents[index].amount}'),
          trailing: Text('${_spendingEvents[index].date}'),
        );
      },
    );
  }
}
