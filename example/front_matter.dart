import 'dart:io';
import 'package:front_matter/front_matter.dart' as front_matter;

// Example 1 - Parse a string.
void example1() async {
  var file = new File('example/hello-world.md');
  var fileContents = await file.readAsString();

  var doc = front_matter.parse(fileContents);

  print("The author is ${doc.data['author']}");
  print("The publish date is ${doc.data['date']}");
  print("The content is ${doc.content}");
}

// Example 2 - Read a file and parse its contents.
void example2() async {
  var doc = await front_matter.parseFile('example/hello-world.md');

  print("The author is ${doc.data['author']}");
  print("The publish date is ${doc.data['date']}");
  print("The content is ${doc.content}");
}

void main() async {
  await example1();
  await example2();
}
