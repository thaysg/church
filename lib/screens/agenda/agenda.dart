import 'package:church/css/css.dart';
import 'package:church/screens/agenda/components/agenda_components.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaScreen extends StatefulWidget {
  @override
  _AgendaScreenState createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EVENTOS'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.add_alert),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TableCalendar(
                  calendarController: _controller,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  calendarStyle: CalendarStyle(
                    contentDecoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    weekdayStyle: weekDay,
                    weekendStyle: weekendDay,
                    selectedColor: Color(0xffde0c53),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: weekDayName,
                    weekendStyle: weekendDayName,
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonTextStyle: calendarButtonTextStyle,
                    titleTextStyle: calendarHeader,
                    leftChevronIcon: chevronIconLeft,
                    rightChevronIcon: chevronIconRight,
                  ),
                ),
                Divider(),
                AgendaComponents(
                  myIcon: Icons.check_circle_sharp,
                  iconColor: Color(0xff00cf8d),
                  title: 'Today',
                  event: 'Event 1',
                  description: 'Event Description',
                ),
                AgendaComponents(
                  myIcon: Icons.lock_clock,
                  iconColor: Colors.amber,
                  title: 'Sunday',
                  event: 'Event 2',
                  description: 'Event Description',
                ),
                AgendaComponents(
                  myIcon: Icons.lock_clock,
                  iconColor: Colors.amber,
                  title: 'Monday',
                  event: 'Event 3',
                  description: 'Event Description',
                ),
              ],
            ),
          ),
        ));
  }
}
