import 'package:firebase_auth/firebase_auth.dart';

const kFirebaseUrl = "still-chassis-382314-default-rtdb.firebaseio.com";
const kFirebaseFile = '/chatogram.json';
final kDatabaseUrlList = Uri.https(kFirebaseUrl, kFirebaseFile);
Uri kDatabaseUrl(final String? id) {
  if (id == 'null') {
    return kDatabaseUrlList;
  } else {
    final kDatabaseUrlItem = Uri.https(kFirebaseUrl, "/chatogram/$id.json");
    return kDatabaseUrlItem;
  }
}

const kTitle = "Chatogram";
final firebaseInstance = FirebaseAuth.instance;
