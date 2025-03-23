({
    doInit : function(component, event, helper) {
        var url = $A.get('$Resource.CcareLoginLogo');

        component.set('v.backgroundImageURL', url);
        console.log('Background Path : ' +url);
    }
})