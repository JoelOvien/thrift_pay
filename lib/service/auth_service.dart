
abstract class AuthService {
  Future<dynamic> login({String email, String password});

  Future<dynamic> register({String email, String password});

  Future<dynamic> sendEmailVerification();

  String getCurrentUserEmail();


  bool isEmailVerified();

  Future signOut();


  Stream<bool> changeUser();

  bool isLoggedIn();

  Future<dynamic> passwordReset({String email});

  String currentUserId();

  Future<bool> isVendorOrCourier();
}

class AuthServiceFake implements AuthService {
  @override
  Future login({String email, String password}) async {
    await Future.delayed(Duration(seconds: 3));

  }

  @override
  Future passwordReset({String email}) async {
    await Future.delayed(Duration(seconds: 3));

    return AuthResultStatus.successful;
  }

  @override
  Future register({String email, String password}) async {
    await Future.delayed(Duration(seconds: 4));

    return AuthResultStatus.successful;
  }


  @override
  bool isEmailVerified() {
    return true;
  }

  @override
  Future sendEmailVerification() async {}

  @override
  Future signOut() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Stream<bool> changeUser() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 5));

      if (i % 2 == 0) {
        yield true;
      } else {
        yield true;
      }
    }
  }

  @override
  bool isLoggedIn() {
    return true;
  }

  @override
  String currentUserId() {
    return "Hello";
  }

  @override
  Future<bool> isVendorOrCourier() async {
    return false;
  }

  @override
  String getCurrentUserEmail() {

    return "";
  }
}

class AuthServiceReal implements AuthService {


  @override
  Future login({String email, String password}) async {

  }

  @override
  Future passwordReset({String email}) async {

  }

  @override
  Future register({String email, String password}) async {

  }




  @override
  String getCurrentUserEmail() {

  }


  @override
  Future signOut() async {



  }

  @override
  Stream<bool> changeUser() async* {
  }

  @override
  bool isLoggedIn() {
  }

  @override
  String currentUserId() {
  }

  @override
  bool isEmailVerified() {
  }

  @override
  Future<bool> isVendorOrCourier() {
  }

  @override
  Future sendEmailVerification() {

  }

}

enum AuthResultStatus {
  successful,
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  undefined,
}

class AuthServiceExceptionHandler {
  static AuthResultStatus handleException(e) {
    var status;

    print("error is ${e.code.toUpperCase()}");
    switch (e.code.toUpperCase()) {
      case "INVALID-EMAIL":
        status = AuthResultStatus.invalidEmail;
        break;
      case "WRONG-PASSWORD":
        status = AuthResultStatus.wrongPassword;
        break;
      case "USER-NOT-FOUND":
        status = AuthResultStatus.userNotFound;
        break;
      case "USER-DISABLED":
        status = AuthResultStatus.userDisabled;
        break;
      case "TOO-MANY-REQUESTS":
        status = AuthResultStatus.tooManyRequests;
        break;
      case "OPERATION-NOT-ALLOWED":
        status = AuthResultStatus.operationNotAllowed;
        break;
      case "EMAIL-ALREADY-IN-USE":
        status = AuthResultStatus.emailAlreadyExists;
        break;
      default:
        status = AuthResultStatus.undefined;
    }
    return status;
  }

  static generateExceptionMessage(AuthResultStatus exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.invalidEmail:
        errorMessage = "Your email address appears to be malformed.";
        break;
      case AuthResultStatus.wrongPassword:
        errorMessage = "Your password is wrong.";
        break;
      case AuthResultStatus.userNotFound:
        errorMessage = "User with this email doesn't exist.";
        break;
      case AuthResultStatus.userDisabled:
        errorMessage = "User with this email has been disabled.";
        break;
      case AuthResultStatus.tooManyRequests:
        errorMessage = "Too many requests. Try again later.";
        break;
      case AuthResultStatus.operationNotAllowed:
        errorMessage = "Signing in with Email and Password is not enabled.";
        break;
      case AuthResultStatus.emailAlreadyExists:
        errorMessage = "The email has already been registered.";
        break;
      default:
        errorMessage = "An undefined Error happened.";
    }

    return errorMessage;
  }
}
