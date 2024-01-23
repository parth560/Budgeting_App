import 'package:flutter/material.dart';
import 'spending_event.dart';
import 'spending_event_form.dart';
import 'spending_history.dart';

class SpendingPage extends StatefulWidget {
  const SpendingPage({super.key});

  @override
  State<SpendingPage> createState() => _SpendingPageState();
}

class _SpendingPageState extends State<SpendingPage> {
  final List<SpendingEvent> _spendingEvents = [];

  _addSpendingEvent(SpendingEvent spendingEvent) {
    setState(() {});
    _spendingEvents.add(spendingEvent);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('Budgeting App'),
      )),
      body: ListView(
        children: [
          SizedBox(height: 600, child: SpendingEventForm(_addSpendingEvent)),
          SizedBox(height: 1200, child: SpendingHistory(_spendingEvents))
        ],
      ),
    );
  }
}
