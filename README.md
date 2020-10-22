## ⛏️ Getting started

Add **Custom Login UI** to your project by following the instructions on the 
**[install page](https://pub.dev/packages/custom_login_ui/install)** and start using it:
```dart
import 'package:custom_fade_animation/custom_login_ui.dart';
```
### 📈 Usage

Provide an CustomLogin class in which you can optimize the background, button, validator and handle onLogIn depend on you business logic

```dart
CustomLogin(
      loginTextValue: "My Login", // Value of text button
      onLogIn: (username,password) => print("Hello $username $password"), // handle login
      backGroundPath: 'assets/images/purplebackground.png' , // customize background
      hasLoginLabel: false, // whether to have login label in the header or not
      emailLabel: "ID", // customize email label
      passwordLabel: "Password", // customize password label
      emailValidator: (value) => value.contains("s") ? "Email contains S" : null, // customize validator
    )
```
