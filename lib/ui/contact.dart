import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  List<Contact> _contacts = [];

  @override
  Widget build(BuildContext context) {
    List<String> data = [];
    return new ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          Contact contact = _contacts[index];

          return new ContactItem(
            title: contact.title,
            avatar: contact.avatar,
          );
        },
        itemCount: _contacts.length,
      ),
    );
  }
}

class Contact {
  String avatar;

  String title;

  Contact({@required this.avatar, @required this.title});
}

class ContactItem extends StatefulWidget {
  String avatar;

  String title;

  ContactItem({@required this.avatar, @required this.title});

  @override
  _ContactItemState createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    Widget _avatarIcon = Image.network(
      "https://www.baidu.com",
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
    Widget space = Container(
      width: 15.0,
    );
    Widget _title = new Expanded(
      child: new Container(
        padding: const EdgeInsets.only(right: 16.0),
        height: 6.0 * 2 + 42.0 + 0.2,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
            width: 0.2,
            color: Colors.grey,
          )),
        ),
        child: new Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w400),
          maxLines: 1,
        ),
      ),
    );

    Widget button = new FlatButton(
      color: Colors.white,
      onPressed: () {
        print("clicked");
      },
      child: new Row(
        children: [
          _avatarIcon,
          space,
          _title,
        ],
      ),
    );

    return button;
  }
}
