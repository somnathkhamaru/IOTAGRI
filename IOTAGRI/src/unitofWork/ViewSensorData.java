package unitofWork;

import java.util.List;

import entity.SensorData;

public interface ViewSensorData {
	public List<SensorData> readSensorDataFromDashDb(String type, String startDate,String endDate)  throws Exception;
}
