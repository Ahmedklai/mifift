import 'package:flutter/material.dart';
import 'package:mifift/widgets/button.dart';
import 'package:mifift/widgets/ranking_list.dart';
import 'package:mifift/widgets/text_field.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  List<Widget> list = [
    Tab(
      text: 'General',
    ),
    Tab(
      text: 'Personal',
    ),
    Tab(
      text: 'Adress',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _items = ['One', 'Two', 'Three', 'Four'].toList();
    var data = MediaQuery.of(context);
    String _selection;
    final dropdownMenuOptions = _items
        .map((String item) =>
            new DropdownMenuItem<String>(value: item, child: new Text(item)))
        .toList();
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        title: TabBar(
          labelColor: Theme.of(context).primaryColor,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Theme.of(context).hintColor,
          isScrollable: true,
          onTap: (index) {
            // Should not used it as it only called when tab options are clicked,
            // not when user swapped
          },
          controller: _controller,
          tabs: list,
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          General(data: data),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFieldWidget(
                    hint: 'Job',
                  ),
                  TextFieldWidget(
                    hint: 'Gender',
                  ),
                  TextFieldWidget(
                    hint: 'Birthdate',
                  ),
                  TextFieldWidget(
                    hint: 'Weight',
                    inputType: TextInputType.emailAddress,
                  ),
                  TextFieldWidget(
                    hint: 'Height',
                  ),
                  DropdownButton<String>(
                      value: _selection,
                      items: dropdownMenuOptions,
                      onChanged: (s) {
                        setState(() {
                          _selection = s;
                        });
                      }),
                  SizedBox(height: data.size.height * 0.05),
                  RoundedButtonWidget(
                    buttonColor: Theme.of(context).primaryColor,
                    textColor: Theme.of(context).hintColor,
                    buttonText: ('Continue'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Adresse(data: data),
        ],
      ),
    );
  }
}

class Adresse extends StatelessWidget {
  const Adresse({
    Key key,
    @required this.data,
  }) : super(key: key);

  final MediaQueryData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFieldWidget(
              hint: 'Country',
            ),
            TextFieldWidget(
              hint: 'Building',
            ),
            TextFieldWidget(
              hint: 'City',
            ),
            TextFieldWidget(
              hint: 'Block',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(height: data.size.height * 0.05),
            RoundedButtonWidget(
              buttonColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).hintColor,
              buttonText: ('Continue'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class General extends StatelessWidget {
  const General({
    Key key,
    @required this.data,
  }) : super(key: key);

  final MediaQueryData data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                  height: data.size.height * 0.2,
                  width: data.size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/Logo.png'),
                    ),
                  )),
            ),
            TextFieldWidget(
              hint: 'First name',
            ),
            TextFieldWidget(
              hint: 'Last name',
            ),
            TextFieldWidget(
              hint: 'Username',
            ),
            TextFieldWidget(
              hint: 'Email',
              inputType: TextInputType.emailAddress,
            ),
            TextFieldWidget(
              hint: 'Password',
            ),
            SizedBox(height: data.size.height * 0.05),
            RoundedButtonWidget(
              buttonColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).hintColor,
              buttonText: ('Edit'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
