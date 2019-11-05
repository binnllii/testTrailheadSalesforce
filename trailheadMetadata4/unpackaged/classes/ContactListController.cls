public class ContactListController {
	@AuraEnabled
    public static List<Contact> getContactList(){
        List<Contact> contactList = new List<Contact>([Select Id, Name, Email, Phone From Contact Where Email != null]);
        return contactList;
    }
}