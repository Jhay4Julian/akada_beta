import 'package:akada_beta/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Not String but DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/Samuel.jpg',
);

// USERS
final User ment0 = User(
  id: 1,
  name: 'Adebayo Mustafa',
  imageUrl: 'assets/images/mentors/ment0.jpg',
);
final User ment1 = User(
  id: 2,
  name: 'Clara Nwogu',
  imageUrl: 'assets/images/mentors/ment1.jpg',
);
final User ment2 = User(
  id: 3,
  name: 'Bukola Gbolade',
  imageUrl: 'assets/images/mentors/ment2.jpg',
);
final User ment3 = User(
  id: 4,
  name: 'Mark Coker',
  imageUrl: 'assets/images/mentors/ment3.jpg',
);
final User ment4 = User(
  id: 5,
  name: 'Chukwu Modu',
  imageUrl: 'assets/images/mentors/ment4.jpg',
);
final User ment5 = User(
  id: 6,
  name: 'Max Prosper',
  imageUrl: 'assets/images/mentors/ment5.jpg',
);
final User ment6 = User(
  id: 7,
  name: 'Juliet Omion',
  imageUrl: 'assets/images/mentors/ment6.jpg',
);
final User xahavi = User(
  id: 8,
  name: 'Xahavi',
  imageUrl: 'assets/images/mentors/ment0.jpg',
);


// FAVORITE CONTACTS
List<User> favorites = [ment0, ment1, ment2, ment3, ment4, ment5, ment6];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: ment2,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment0,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment3,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ment1,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment4,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ment5,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ment6,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: ment0,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment0,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment0,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: ment0,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];