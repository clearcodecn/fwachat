enum LoginStatus {
  NotScan,
  Scanned,
  Login,
}

class LoginResponse {
  LoginStatus status;
  String redirectURL;

  LoginResponse(this.status, this.redirectURL);

  bool isLogin() {
    return status == LoginStatus.Login;
  }

  bool isScanned() {
    return status == LoginStatus.Scanned;
  }

  LoginResponse.Default() {
    status = LoginStatus.NotScan;
    redirectURL = "";
  }
}
