class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = 'An unKnown Error occured.']);

  //Create factory contructor or Named

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'Weak-Password':
        return const SignUpWithEmailAndPasswordFailure(
            'Please Enter a Stronger password');
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
            'Email is not valid or badly formatted');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
            'An account already exists for that email');
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
            'operation is not allowed. please contact support');
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
            'This user has been disabled. Please contact support for help');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
