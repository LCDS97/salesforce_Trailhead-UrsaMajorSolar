public with sharing class NewCaseListController {

    public List<Case> getNewCases()

     {
       List<Case> results =Database.query('SELECT ID, CaseNumber FROM Case LIMIT 10');

       return results;

    }
}