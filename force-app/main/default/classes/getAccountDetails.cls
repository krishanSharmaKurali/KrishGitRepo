public with sharing class getAccountDetails {
    @AuraEnabled
    public static List<Account> getAccountDetails1() {
       return [Select Id, Name from account];
    }

    @AuraEnabled
    public static List<Contact> getAccountContactsDetails(Id ContactId) {
       return [Select Id, Name from Contact where id = :contactid];
    }

    @AuraEnabled
    public static assigncontactCap(Id ContactId) {
    }
}