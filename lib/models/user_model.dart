import 'package:chat_app/constants.dart';

class UserModel {
  String uid;
  String name;
  String phoneNumber;
  String image;
  String token;
  String aboutMe;
  String lastSeen;
  String createdAt;
  bool isOnline;
  List<String> friendsUIDs;
  List<String> friendRequestsUIDs;
  List<String> sentRequestsUIDs;

  UserModel({
    required this.uid,
    required this.name,
    required this.phoneNumber,
    required this.image,
    required this.token,
    required this.aboutMe,
    required this.lastSeen,
    required this.createdAt,
    required this.isOnline,
    required this.friendsUIDs,
    required this.friendRequestsUIDs,
    required this.sentRequestsUIDs,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map[Constants.uid] as String ?? '',
      name: map[Constants.name] as String ?? '',
      phoneNumber: map[Constants.phoneNumber] as String ?? '',
      image: map[Constants.image] as String ?? '',
      token: map[Constants.token] as String ?? '',
      aboutMe: map[Constants.aboutMe] as String ?? '',
      lastSeen: map[Constants.lastSeen] as String ?? '',
      createdAt: map[Constants.createdAt] as String ?? '',
      isOnline: map[Constants.isOnline] as bool ?? false,
      friendsUIDs:
          List<String>.from(map[Constants.friendsUIDs] as List<dynamic>) ?? [],
      friendRequestsUIDs: List<String>.from(
              map[Constants.friendRequestsUIDs] as List<dynamic>) ??
          [],
      sentRequestsUIDs:
          List<String>.from(map[Constants.sentRequestsUIDs] as List<dynamic>) ??
              [],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      Constants.uid: uid,
      Constants.name: name,
      Constants.phoneNumber: phoneNumber,
      Constants.image: image,
      Constants.token: token,
      Constants.aboutMe: aboutMe,
      Constants.lastSeen: lastSeen,
      Constants.createdAt: createdAt,
      Constants.isOnline: isOnline,
      Constants.friendsUIDs: friendsUIDs,
      Constants.friendRequestsUIDs: friendRequestsUIDs,
      Constants.sentRequestsUIDs: sentRequestsUIDs,
    };
  }
}
