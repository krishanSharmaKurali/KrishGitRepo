trigger ContactTrigger on Contact (after update, after insert, after delete) {
        List<Contact> conList = new List<Contact>();
        if(trigger.isInsert || Trigger.isUpdate){
            conList = trigger.new;
        }
        if(Trigger.isDelete || Trigger.isUpdate){
            conList = trigger.old;
        }
        ContactTriggerHandler.UpdateAccountfield(conList);   
}