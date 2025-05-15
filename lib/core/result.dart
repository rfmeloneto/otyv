sealed class Result<S, E> {
  const Result(); 

  R fold<R>({
    required R Function(S value) onSuccess,
    required R Function(E error) onFailure,
  }) {
    return switch (this) {
      Success(value: final sValue) => onSuccess(sValue),
      Failure(error: final eValue) => onFailure(eValue),
    };
  }


}

class Success<S, E> extends Result<S, E> {
  final S value;

  const Success(this.value);
}

class Failure<S, E> extends Result<S, E> {
  final E error;

  const Failure(this.error);
}
