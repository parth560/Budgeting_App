import 'package:flutter/material.dart';
import 'spending_event.dart';

class SpendingEventForm extends StatelessWidget {
  final void Function(SpendingEvent event) addSpendingEvent;

  const SpendingEventForm(this.addSpendingEvent, {super.key});

  // a callback method that we'll use to handle user input
  void _onSavePressed() {
    print('User tried to save data');
    SpendingEvent event = SpendingEvent("", "", 12.00, DateTime.now());
    addSpendingEvent(event);
    // TODO: call addSpendingEvent
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold does a variety of things, but for this sample the main
    // value is that it gives default styles to our background and text
    // A "safe area" is the area that won't overlap with the camera notch,
    // rounded edges of the screen, the OS's notifications, etc.
    // It comes baked in to some other widgets, but we're using it explicitly here.
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        const Text('Add Event', style: TextStyle(fontSize: 48)),
        const TextField(
          decoration: InputDecoration(labelText: 'Merchant'),
        ),
        const Text('Category'),
        const DropdownMenu(dropdownMenuEntries: []),
        const Row(mainAxisSize: MainAxisSize.min, children: [
          Text('Amount'),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
            ),
          )
        ]),
        const Text('Date'),
        const TextField(
          keyboardType: TextInputType.datetime,
        ),
        ElevatedButton(
            // Note: we are not calling _onSavePressed! We are passing it
            // like an object to this other widget as a constructor arg.
            onPressed: _onSavePressed,
            child: const Text('Save'))
      ])),
    );
  }
}
