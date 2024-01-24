import 'dart:html';

// Iterable<String> thingsTodo() sync* {
//   const actions = ['Walk', 'Wash', 'Feed'];
//   const pets = ['cats', 'dogs'];

//   for (final action in actions) {
//     for (final pet in pets) {
//       if (pet != 'cats' || action == 'Feed') {
//         yield '$action the $pet';
//       }
//     }
//   }
// }

// LIElement newLI(String itemText) => LIElement()..text = itemText;

int counter = 0;

void main() {
  querySelector('#output')?.text = 'Your Dart app is running.';

  // Initial Data
  querySelector("#counterValue")?.text = counter.toString();

  querySelector("#btnIn")?.onClick.listen((event) {
    counter++;
    querySelector("#counterValue")?.text = counter.toString();
  });

  querySelector("#btnDec")?.onClick.listen((event) {
    if (counter > 0) {
      counter--;
      querySelector("#counterValue")?.text = counter.toString();
    }
  });

  // querySelector('#output')?.children.addAll(thingsTodo().map(newLI));
}
