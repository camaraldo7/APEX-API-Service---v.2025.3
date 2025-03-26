/**
* @File Name : ParkLocatorTest.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : March 24, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | March 24, 2025 |   | Initial Version
**/
@IsTest
private class ParkLocatorTest {
	@IsTest static void testCallout(){
		Test.setMock(WebServiceMock.class, new ParkServiceMock());

		Integer size = ParkLocator.country('Japan').size();
        Assert.areEqual(3, size);
	}
}