## ⛏️ Getting started

Add **Custom Login UI** to your project by following the instructions on the 
**[install page](https://pub.dev/packages/custom_login_ui/install)** and start using it:
```dart
import 'package:custom_login_ui/custom_login_ui.dart';
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

###  🚀 Overview

| Property | Description |
| --- | ----------- |
|loginTextValue | Customize login's button text |
|onLogIn | Handle login base on your business logic |
|backGroundPath | Image path for background |
|firstItemPath | Image path for the first item |
|secondItemPath | Image path for the second item|
|thirdItemPath | Image path for the third item |
|hasLoginLabel | Bool value for visibility of the Login Label in header|
|emailLabel | Text Label for the text above email form |
|passwordLabel | Text Label for the text above password form |
|emailValidator| Define your custom email validator here otherwise default email validator will be called |
|passwordValidator | Define your custom password validator here otherwise default password validator will be called |

