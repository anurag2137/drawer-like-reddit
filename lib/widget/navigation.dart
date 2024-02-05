
import 'package:drawer/widget/drawer_item.dart';
import 'package:drawer/widget/people.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 140,
                      width: 80,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/download.jpeg'))),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'u/Able_Document_7077',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                        color: Colors.grey, // Change the color here
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Adjust the value to change the oval shape
                    color: Colors.black,
                    // Color of the oval box
                    border: Border.all(
                      color: Colors.green, // Border color
                      width: 1, // Border width
                    ),
                  ),
                  child: SizedBox(height: 30,width: 200,
                    child: TextButton(
                      onPressed: () {
                      },

                      child: const Text(
                        'Online status:ON',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.green, // Text color

                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(height: 30,
                  child: ElevatedButton(
                    onPressed: () {},
                      style: ElevatedButton.styleFrom(
                       fixedSize: Size(400, 50),
                        backgroundColor: Colors.deepOrange[900]
                      ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min, // Ensure the Row takes minimum space
                      children: [
                        Icon(Icons.person_2_sharp), // Icon widget
                        SizedBox(width: 8), // Add some spacing between icon and text
                        Text(
                          'Style Avatar', // Text to display next to the IconButton
                          style: TextStyle(
                            // TextStyle for the text
                            fontSize: 16, // Example font size
                            color: Colors.white, // Example text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Row(
                    children: [
                  Column(
                    children: [
                      Icon(
                          Icons.front_hand_outlined,
                        color: Colors.white,

                      ),
                      SizedBox(height: 10,),
                      Text(
                          '1',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          'Karma',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      ),

                    ],
                  ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(
                            Icons.man_outlined,
                            color: Colors.white,

                          ),
                          SizedBox(height: 15,),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        SizedBox(height: 10,),
                          Text(
                            'Achievements',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10,),
                          Text(
                            '3d',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,

                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Reddit age',
                            style: TextStyle(
                              fontSize: 16,
                                color: Colors.white,
                            ),
                          )
                        ],
                      )
                  ]
                ),


                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 0.1,
                  height: 5,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [ DrawerItem(
                          name: 'My Profile',
                          icon: Icons.account_box_rounded,
                          onPressed: () {}),
                        DrawerItem(
                            name: 'Create a community',
                            icon: Icons.group,
                            onPressed: () {}),
                        DrawerItem(
                            name: 'Contributor program',
                            icon: Icons.wallet,
                            onPressed: () {}),
                        DrawerItem(
                            name: 'Vault', icon: Icons.lock_outline, onPressed: () {}),
                        DrawerItem(
                            name: 'Reddit Premium',
                            icon: Icons.gavel,
                            onPressed: () {}),
                        DrawerItem(name: 'saved', icon: Icons.save, onPressed: () {}),
                        DrawerItem(
                            name: 'History', icon: Icons.history, onPressed: () {}),
                        ],
                    ),
                  ),
                ),
                Container(
                  child: DrawerItem(
                      name: 'Setting',
                      icon: Icons.settings,
                      onPressed: () {}
                  ),
                )


              ],
            ),
          ),
        ));
  }
}
