class ChatModel {
  String? id;
  String? message;
  bool? isMe;

  ChatModel();

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel()
    ..id = json['id'] as String?
    ..message = json['message'] as String?;
}

class FakeChats {
  static final chats = <ChatModel>[
    ChatModel.fromJson(libraryJson1),
    ChatModel.fromJson(libraryJson2),
    ChatModel.fromJson(libraryJson3),
    ChatModel.fromJson(libraryJson4),
    ChatModel.fromJson(libraryJson3),
    ChatModel.fromJson(libraryJson2),
    ChatModel.fromJson(libraryJson1),
  ];

  static const libraryJson1 = {
    'id': '1',
    'isMe': true,
    'user': {
      'id': '1',
      'name': 'Lorem Ipsum',
      'image': 'https://picsum.photos/250?image=201',
    },
    'message':
        'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type',
  };

  static const libraryJson2 = {
    'id': '2',
    'user': {
      'id': '2',
      'name': 'Bibliothèque 2',
      'image': 'https://picsum.photos/250?image=202',
    },
    'message': 'Description de la bibliothèque 2',
  };

  static const libraryJson3 = {
    'id': '3',
    'user': {
      'id': '3',
      'name': 'Bibliothèque 3',
      'image': 'https://picsum.photos/250?image=203',
    },
    'message': 'Description de la bibliothèque 3',
  };

  static const libraryJson4 = {
    'id': '4',
    'user': {
      'id': '4',
      'name': 'Bibliothèque 4',
      'image': 'https://picsum.photos/250?image=204',
    },
    'message': 'Description de la bibliothèque 4',
  };
}
