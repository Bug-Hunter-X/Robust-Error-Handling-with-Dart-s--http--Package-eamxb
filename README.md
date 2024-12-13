# Robust Error Handling in Dart with `http`

This example demonstrates best practices for handling errors when using Dart's `http` package to make network requests.  Proper error handling is crucial for creating reliable and resilient applications.

The `bug.dart` file showcases a common mistake: insufficient exception handling. The `bugSolution.dart` provides a more robust solution.

## Key improvements in `bugSolution.dart`:

* **Explicit Status Code Checks:**  Checks the HTTP status code (`response.statusCode`) to distinguish between successful requests (200) and errors.
* **Comprehensive Exception Handling:** Uses a `try-catch` block to handle potential exceptions during the network request (e.g., network timeouts, DNS resolution failures).
* **Informative Error Messages:** Provides informative error messages to aid in debugging and user feedback.
* **Rethrowing Exceptions (Optional):** Allows exceptions to propagate up the call stack for higher-level handling if necessary.