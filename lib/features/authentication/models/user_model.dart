import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:online_business/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.userName,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.profilePicture,
    required this.email,
  });

  String get fullName => "$firstName $lastName";

  String get formattedPhoneNo => NFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(String fullName) => fullName.split(" ");

  static String generateUserName(String fullName) {
    List<String> nameParts = fullName.split(" ");
    String lastName = nameParts[0].toLowerCase();
    String firstName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$lastName$firstName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
        userName: "",
        id: "",
        firstName: "",
        lastName: "",
        phoneNumber: "",
        profilePicture: "",
        email: "",
      );

  // Convert the UserModel to a JSON format.
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
      'Email': email,
    };
  }

  // Factory constructor for creating a UserModel from a Firestore DocumentSnapshot.
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return UserModel(
      id: document.id,
      firstName: data?['FirstName'] ?? "",
      lastName: data?['LastName'] ?? "",
      userName: data?['UserName'] ?? "",
      phoneNumber: data?['PhoneNumber'] ?? "",
      profilePicture: data?['ProfilePicture'] ?? "",
      email: data?['Email'] ?? "",
    );
  }
}
