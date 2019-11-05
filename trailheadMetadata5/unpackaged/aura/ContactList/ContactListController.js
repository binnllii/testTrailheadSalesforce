({
	doInit : function(component, event, helper) {
		var action = component.get('c.getContactList');		
        /* optional */
        action.setParams({
            
        });
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue ', responseValue);
            component.set('v.contactList', responseValue);
        });
        $A.enqueueAction(action, false);
	}
})