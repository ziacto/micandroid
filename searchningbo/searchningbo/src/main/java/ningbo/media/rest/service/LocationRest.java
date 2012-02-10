package ningbo.media.rest.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import ningbo.media.bean.Location;
import ningbo.media.bean.SecondCategory;
import ningbo.media.service.LocationService;
import ningbo.media.service.SecondCategoryService;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Path("/location")
@Component
@Scope("request")
public class LocationRest {

	@Resource
	private LocationService locationService;

	@Resource
	private SecondCategoryService secondCategoryService;

	@Path("/showAll")
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	public List<Location> getAllLocations() {
		return locationService.getAll();
	}

	@Path("/show/{id : \\d+}")
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	public Location getLocationById(@PathParam("id") String id) {
		if (id == null) {
			return null;
		}
		return locationService.get(Integer.valueOf(id));
	}

	@Path("/category/{id : \\d+}")
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	public List<Location> getAllLocationsBySecondCategory(
			@PathParam("id") String id) {
		if (id == null) {
			return null;
		}
		SecondCategory secondCategory = secondCategoryService.get(Integer
				.valueOf(id));
		if (secondCategory == null) {
			return new ArrayList<Location>();
		}
		List<Location> listLocation = secondCategory.getLocations();
		int size = listLocation.size();
		if (size == 1) {
			listLocation.add(new Location());
		}
		return listLocation;
	}

	@Path("/nearby")
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	public List<Location> getNearByLocations(
			@QueryParam("latitude") String latitude,
			@QueryParam("longitude") String longitude,
			@QueryParam("area") String area) {

		double lat = Double.valueOf(latitude);
		double lon = Double.valueOf(longitude);
		double tmpArea = Double.valueOf(area);
		List<Location> listLocation = locationService.getNearByLocations(lat,
				lon, tmpArea);
		try{
			int size = listLocation.size();
			if (size == 1) {
				listLocation.add(new Location());
			}
		}catch(Exception ex){
			ex.printStackTrace() ;
			
		}
		return listLocation;
	}

}