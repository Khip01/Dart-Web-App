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
    if (counter >= 60) {
      querySelector('#output')?.text =
          'Your Dart app is running. 😑Bro, enough. Go touch the grass! ';
    } else if (counter >= 40) {
      querySelector('#output')?.text =
          'Your Dart app is running. 🤨Bro, you\'ve pressed this button $counter times. Don\'t you have anything else to do?';
    }
  });

  querySelector("#btnDec")?.onClick.listen((event) {
    if (counter > 0) {
      counter--;
      querySelector("#counterValue")?.text = counter.toString();
    }
    if (counter < 40) {
      querySelector('#output')?.text = 'Your Dart app is running.';
    } else if (counter >= 40){
      querySelector('#output')?.text ='Your Dart app is running. 😐Okay, you reduced the number, now what?';
    }
  });

  querySelector("#footerValue")?.text = "Pretty exciting huh?😎😏 ~khip01";

  // querySelector('#output')?.children.addAll(thingsTodo().map(newLI));
}
