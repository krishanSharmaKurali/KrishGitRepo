public class ContactTriggerHandler {
    
    Public Static Void UpdateAccountfield(List<Contact> conList){
        Set<Id> accIds = new Set<Id>();
        List<Account> accListUpd = new List<Account>();
        for(Contact conRec: conList){
            accIds.add(conRec.accountId);
        }
        
        List<Account> accList = [SELECT Id, (SELECT Id 
                                             FROM Contacts) 
                                 FROM Account 
                                 WHERE Id IN :accIds];
        for(Account accRec: accList){
           Account acc = new Account();
           acc.Id = accRec.Id;
           acc.No_of_Contacts__c = accRec.contacts.size();
           accListUpd.add(acc);
        }      
        Update accListUpd;     
    }
   
}