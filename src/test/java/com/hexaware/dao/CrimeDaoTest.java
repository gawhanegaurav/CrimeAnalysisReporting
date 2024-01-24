package com.hexaware.dao;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.hexaware.entity.Cases;
import com.hexaware.entity.Incidents;

public class CrimeDaoTest {
	    
	    private CrimeDao crimeDao;
	    private Cases updatedCase;
	    
	    @Before
	    public void setUp() {
	        crimeDao = new CrimeDao();
	        updatedCase = new Cases();
	    }

	    @After
	    public void tearDown() {
	        // Clean up resources if needed
	        crimeDao = null;
	        updatedCase =null;
	    }
	    
	    @Test
	    public void testCreateIncident() {
	        // Arrange
	        Incidents testIncident = new Incidents(
	            12,
	            "Robbery",
	            java.sql.Date.valueOf("2022-01-15"),
	            "banglore",
	            "Armed robbery at a convenience store",
	            "Open",
	            115,
	            208
	        );

	     // Act
	        boolean result = crimeDao.createIncident(testIncident);

	        // Debug information
	        System.out.println("Result: " + result);

	        // Assert
	        assertTrue("Incident creation should return true for success", result);
	    }
	    /*
	    @Test
	    public void testCreateCases() {
	        // Arrange
	        Cases testCases = new Cases(11, "robbery", 4);

	        // Act
	        boolean result = crimeDao.createCase(testCases);

	        // Assert
	        assertTrue("Case creation should return true for success", result);
	    }
	   */
	    @Test
	    public void testUpdateIncidentStatus() {
	        // Arrange
	        int incidentId = 3;
	        String status = "CLOSED";

	        // Act
	        boolean result = crimeDao.updateIncidentStatus(incidentId, status);

	        // Assert
	        assertTrue("Incident status update should return true for success", result);
	    }
	    @Test
	    public void testUpdateCaseDetails() {
	        // Arrange
	        
	        updatedCase.setCaseId(11); 
	        updatedCase.setCaseDescription("Updated to robbery");
	        updatedCase.setIncidentsid(2); 
	         
	        // Act
	        boolean result = crimeDao.updateCaseDetails(updatedCase);

	        // Assert
	        assertTrue("Case details update should return true for success", result);
	    }
	
}
