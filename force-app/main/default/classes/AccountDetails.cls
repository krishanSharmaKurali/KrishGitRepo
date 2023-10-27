public class AccountDetails {
    @auraEnabled
    public static List<Account> getAccountDetails() {
        return [SELECT Id, Name, CreatedDate
                FROM Account
                ORDER BY CreatedDate DESC
                LIMIT 10];
    }
}