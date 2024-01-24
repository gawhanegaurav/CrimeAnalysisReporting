package com.hexaware.controller;

import com.hexaware.exception.IncidentNumberNotFoundException;
import com.hexaware.exception.InvalidDataException;

public interface IncidentsInterface {

	void createIncident() throws InvalidDataException;

	void updateIncidentStatus() throws IncidentNumberNotFoundException;

	void getIncidentsInDateRange();

	void searchIncidentsByType();

	void getAllIncidents();

}
