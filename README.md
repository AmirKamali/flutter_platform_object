This package will help you write clean flutter apps without branching code for each platform

## Features

- Supports iOS,Android, Web, MacOSX, Linux, Windows, Funchsia

## Getting started

For installation just include `platform_object` in your pubspec.yml

dependencies:
  platform_object:


## Usage

Usage is super simple, just initialize your platform object with the necessery values

```dart
final platformString = PlatformObject(ios: "ios", android: "android").value;
print("Hello $platformString"); // Will print "Hello iOS" or "Hello Android" depending on the platform
```
You can quickly scale this and see how much you can clean up your codes. For example let's say you want to display platform specific buttons on your app. You can implement it like below:

```dart
class MyiOSButton extends StatelessWidget {
  const MyiOSButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoButton(
      child: const Text('My iOS Button'),
      onPressed: null,
    );
  }
}

class MyAndroidButton extends StatelessWidget {
  const MyAndroidButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextButton(
      onPressed: null,
      child: Text('My Android button'),
    );
  }
}

// Main app
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // Just include the platform object with the widgets per platform
          child: PlatformObject(
                  ios: const MyiOSButton(), 
                  android: const MyAndroidButton())
              .value),
    );
  }
}
```



## Additional information

The implementation of this class is simple and it is using final to minimize the overhead on the runtime

If you have any questions, ideas or feedbacks do not hesitate to contact. Happy coding!