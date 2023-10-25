import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarEvent extends StatefulWidget {
  const CalendarEvent({super.key});

  @override
  State<CalendarEvent> createState() => _CalendarEventState();
}

class _CalendarEventState extends State<CalendarEvent> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDate;

  final titleController = TextEditingController();
  final descpController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;
  }

  // Afficher
  _showAddEventDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Ajouter un nouvel événement'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: titleController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Titre',
              ),
            ),
            TextField(
              controller: descpController,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Annuler'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Ajouter'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Agenda'),
      ),
      body: Column(
        children: [
          // Calendrier de 2023 jusqu'en 2024
          TableCalendar(
            firstDay: DateTime(2023),
            lastDay: DateTime(2024),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,

            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDate, selectedDay))
                setState(() {
                  _focusedDay = focusedDay;
                  _selectedDate = selectedDay;
                });
            },
            // selectionner une date
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDate, day);
            },

            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                // Appeler setSatate() quand on met à jour calendar format
                // Quand on clique sur le format de l'agenda, il change selon le type (jour, semaine, mois)
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // pas besoin d'apeler setState ici
              _focusedDay = focusedDay;
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showAddEventDialog(),
        label: const Text('Ajouter un événement'),
      ),
    );
  }
}
