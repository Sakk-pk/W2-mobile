class MyDuration {
  final int _milliseconds;

  MyDuration(this._milliseconds);

  //MyDuration.fromhours(int hours):
  int get Milliseconds => _milliseconds;

  MyDuration.fromHours(int hours) : _milliseconds = hours * 3600000;
  MyDuration.fromMinutes(int minutes) : _milliseconds = minutes * 60000;
  MyDuration.fromSeconds(int seconds) : _milliseconds = seconds * 1000;

  bool operator >(MyDuration other) => _milliseconds > other._milliseconds;

  MyDuration operator +(MyDuration other) =>
      MyDuration(_milliseconds + other._milliseconds);

  MyDuration operator -(MyDuration other) => _milliseconds > other._milliseconds
      ? MyDuration(_milliseconds - other._milliseconds)
      : MyDuration(other._milliseconds - _milliseconds);

  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}
// Display the duration in a readable format

void main() {
  MyDuration d1 = MyDuration(1000);
  print(d1.Milliseconds);

  MyDuration d2 = MyDuration.fromHours(1);
  print(d2.Milliseconds);

  MyDuration d3 = MyDuration.fromMinutes(6);

  print(d2 > d3);

  print(d2 + d3);

  //   MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  //   MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  //   print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  //   print(duration1>duration2); //true

  //   try {
  //     print(duration2 - duration1); // This will throw an exception
  //   } catch (e) {
  //     print(e);
  //   }
}
