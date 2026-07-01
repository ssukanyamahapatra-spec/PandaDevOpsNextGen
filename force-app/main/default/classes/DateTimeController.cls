public class DateTimeController {

// Method to get the current date and time
public static Datetime getCurrentDateTime() {
return Datetime.now();
}

// Method to format the current date and time
public static String getFormattedDateTime() {
Datetime currentDateTime = getCurrentDateTime();
return currentDateTime.format('yyyy-MM-dd HH:mm:ss');
}
// Method to add days to the current date
public static Datetime addDaysToCurrentDate(Integer days) {
Datetime currentDateTime = getCurrentDateTime();
return currentDateTime.addDays(days);
}
// Method to subtract days from the current date
public static Datetime subtractDaysFromCurrentDate(Integer days) {
Datetime currentDateTime = getCurrentDateTime();
return currentDateTime.addDays(-days);
}
// Method to get the difference in days between two dates
public static Long getDifferenceInDays(Datetime startDate, Datetime endDate) {
return endDate.date().daysBetween(startDate.date());
}

// New method to get the current date in a specific timezone
public static Datetime getCurrentDateTimeInTimezone(String timezoneId) {
TimeZone tz = TimeZone.getTimeZone(timezoneId);
Integer offset = tz.getOffset(Datetime.now()) / 1000;
return Datetime.now().addSeconds(offset);
}
    
// New method to subtract hours from the current date and time
public static Datetime subtractHoursFromCurrentDateTime(Integer hours) {
Datetime currentDateTime = getCurrentDateTime();
return currentDateTime.addHours(-hours);
}

}