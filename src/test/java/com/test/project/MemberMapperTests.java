package com.test.project;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.test.project.mapper.MemberMapper;
import com.test.project.model.UserDTO;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})

public class MemberMapperTests {

	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testMapper() {
		
		assertNotNull(mapper);
		
		UserDTO dto = mapper.get("hong");
	}
	
	

}
