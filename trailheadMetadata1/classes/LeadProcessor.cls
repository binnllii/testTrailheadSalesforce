global class LeadProcessor implements Database.batchable<sObject> {
    global Database.queryLocator start(Database.batchableContext bc) {
        //Query all Lead records
        String query = 'SELECT LeadSource FROM Lead';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.batchableContext bc, list<sObject> scope) {
        list<Lead> lstLead  = new list<Lead>();
        for(sObject s : scope) {
            Lead l = (Lead) s;
            l.LeadSource = 'Dreamforce';
            lstLead.add(l);
        }
        Update lstLead;
    }
    
    global void finish(Database.batchableContext bc) {
        //Post logic
    }
}