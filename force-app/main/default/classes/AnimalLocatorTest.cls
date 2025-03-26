/**
* @File Name : AnimalLocatorTest.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 23, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 23, 2025 | Mamadou Lamine CAMARA  | Initial Version
**/

@isTest
private class AnimalLocatorTest 
{
  @isTest static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    String expectedValue = AnimalLocator.getAnimalNameById(1);
        System.debug('expectedValue=' + expectedValue);
    //System.assertNotEquals(0, expectedValue.length());    
  }
}