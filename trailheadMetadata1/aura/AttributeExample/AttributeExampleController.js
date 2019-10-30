({
	doClick : function(component, event, helper) {
		alert(component.isValid());
        alert(component.getName());
        component.set('v.Whom', "test value");
        var ageComp = component.find('testInput');
        alert(ageComp.get('v.value'));
        ageComp.set('v.value', "hello")
	}
})