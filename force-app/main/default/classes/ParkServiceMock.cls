/**
* @File Name : ParkServiceMock.cls
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
global class ParkServiceMock implements WebServiceMock {
	global void doInvoke(
				Object stub,
				Object request,
				Map<String, Object> response,
				String endpoint,
				String soapAction,
				String requestName,
				String responseNS,
				String responseName,
				String responseType){
		ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
		response_x.return_x = new String[]{'Shiretoko National Park', 'Oze National Park', 'Hakusan National Park'};

		response.put('response_x', response_x);
		
	}
}