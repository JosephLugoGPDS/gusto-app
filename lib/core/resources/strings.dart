abstract class AppStrings {
  static const errorMessages = _ErrorMessages();
}

class _ErrorMessages {
  const _ErrorMessages();

  final commonError = "Ha ocurrido un error. Por favor volver a intentarlo.";
  final databaseError =
      "Ha ocurrido un problema al intentar realizar la petición.";
  final unexpectedError = "Ha ocurrido un error inesperado";
}
