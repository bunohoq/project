package com.test.project.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.test.project.mapper.MemberMapper;
import com.test.project.model.CustomUser;
import com.test.project.model.UserDTO;


//User > CustomUser 사용

public class CustomUserDetailsService implements UserDetailsService{

	//DB > select > User
	
	//1. /.customlogin.do > 아이디(hong), 암호(1111) 입력
	//2. POST + /login > 인증 처리
	//2. 2번과 더불어 loadUserByUsername() 호출
	
	
	@Autowired
	private MemberMapper mapper;
	
	//로그인 발생 시 같이 호출
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		UserDTO dto = mapper.get(username);
		
		return dto != null ? new CustomUser(dto) : null;
	}
	

}
