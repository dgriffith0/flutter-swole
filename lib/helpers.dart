String getWeekDayName(int weekday) {
  switch(weekday) { 
   case DateTime.sunday: { 
      return "Sun";
   } 
   case DateTime.monday: { 
      return "Mon";
   } 
   case DateTime.tuesday: { 
      return "Tue";
   } 
   case DateTime.wednesday: { 
      return "Wed";
   } 
   case DateTime.thursday: { 
      return "Thu";
   } 
   case DateTime.friday: { 
      return "Fri";
   } 
   case DateTime.saturday: { 
      return "Sat";
   } 
   default: {
     throw new Error();
   }  
} 
}