@isTest
    private class TestVerifyDate {
        @isTest static void testDateWithin30Days(){
            Date date1 = Date.newInstance(2022, 01, 01);
            Date date2 = Date.newInstance(2022, 01, 01); 

            Date comparationDate = VerifyDate.CheckDates(date1,date2);
            System.assertEquals(comparationDate, date2);
            // OK 
        }
        @isTest static void testDateNotWithin30Days(){
            Date date1 = Date.newInstance(2022, 01, 31);
            Date date2 = Date.newInstance(2022, 01, 01);

            Date comparationDate = VerifyDate.CheckDates(date1,date2);
            System.assertEquals(comparationDate, date1);
        }
    }