import { LightningElement, track } from 'lwc';
import getAccountDetails from '@salesforce/apex/AccountDetails.getAccountDetails'

export default class TestAccountDetails extends LightningElement {
    columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Id', fieldName: 'Id' },
        { label: 'Created Date', fieldName: 'CreatedDate' },
    ];
    @track Accounts;
    error;

    connectedCallback(){
        getAccountDetails()
        .then((result) => {
          this.Accounts = result;
        })
        .catch((error) => {
          this.error = error;
        });
    }
}