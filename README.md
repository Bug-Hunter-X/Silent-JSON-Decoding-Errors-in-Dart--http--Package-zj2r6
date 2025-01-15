# Silent JSON Decoding Errors in Dart

This repository demonstrates a common error in Dart applications using the `http` package:  the lack of robust error handling when decoding JSON responses.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

**Problem:**
The `jsonDecode` function can throw a `FormatException` if the response body isn't valid JSON. Without proper `try-catch` handling around `jsonDecode`, these exceptions can go unnoticed, leading to application crashes or unexpected behavior.

**Solution:**
The corrected code includes a `try-catch` block that specifically handles `FormatException` and other potential errors during JSON decoding.  It also provides more informative error messages for debugging.