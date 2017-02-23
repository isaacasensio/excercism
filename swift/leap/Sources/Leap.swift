class Year {
  let calendarYear : Int

  init(calendarYear : Int) {
    self.calendarYear = calendarYear
  }

  var isLeapYear : Bool {
    return ((self.calendarYear % 4 == 0) && (self.calendarYear % 100 != 0))
            || (self.calendarYear % 400 == 0);
  }
}
