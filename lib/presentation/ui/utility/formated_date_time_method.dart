import 'package:intl/intl.dart';

String formatDate(String? dateString) {
  if (dateString == null || dateString.isEmpty) {
    return "No Date";
  }
  try {
    // Parse the date string
    DateTime dateTime = DateTime.parse(dateString);

    // Format the date (e.g., "Oct 5, 2024" or "5 Oct 2024")
    return DateFormat('MMM d, yyyy').format(dateTime);
  } catch (e) {
    return "Invalid Date";
  }
}
