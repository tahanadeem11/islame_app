class Error{
  final String? error;



  Error({
    this.error,
     });

  toJson(){
    return {
      "Error": error,
    };

  }
}