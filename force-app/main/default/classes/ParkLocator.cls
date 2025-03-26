/**
* @File Name : ParkLocator.cls
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

public class ParkLocator {
	public static String[] country(String x){
		ParkService.ParksImplPort park =  new ParkService.ParksImplPort();
		return park.byCountry(x);

	}
}