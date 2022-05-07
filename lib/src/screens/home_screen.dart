import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Mkulima app'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 20, // Image radius
                backgroundImage: NetworkImage(
                    'https://www.gravatar.com/avatar/1b8fabaa8d66250a7049bdb9ecf44397?s=250&d=mm&r=x'),
              ),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.topCenter,
          height: 210,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: Color(0xFF07480E)),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 9,
                        child: SizedBox(
                          height: 50,
                          width: (MediaQuery.of(context).size.width) * 0.8,
                          child: TextField(
                            controller: searchController,
                            // ignore: prefer_const_constructors
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: "Search...",
                                fillColor: Colors.white,
                                filled: true,
                                border: const OutlineInputBorder()),
                          ),
                        ),
                      ),
                      const Expanded(
                          child: SizedBox(
                        width: 0,
                      )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: (MediaQuery.of(context).size.width) * 0.2,
                            // ignore: prefer_const_constructors
                            child: Icon(
                              Icons.filter_list_rounded,
                              color: Colors.white,
                              size: 32,
                            ),
                          ))
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 32,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const CircleAvatar(
                            radius: 30, // Image radius
                            backgroundImage: AssetImage('assets/maize.jpg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Cereals",
                            style: TextStyle(
                                color: Color.fromARGB(206, 243, 239, 239)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add_circle), onPressed: () {}),
        // ignore: unnecessary_new
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.green,
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.feed),
                  label: "Feeds",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark),
                  label: "Bookmarks",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                )
              ]),
        ));
  }
}
