package com.danielnc.fitnessbackdata.services;

import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.danielnc.fitnessbackdata.dao.Role;
import com.danielnc.fitnessbackdata.dao.User;
import com.danielnc.fitnessbackdata.repository.RoleRepository;
import com.danielnc.fitnessbackdata.repository.UserRepository;
import com.danielnc.fitnessbackdata.security.LamePasswordEncoder;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	@Autowired
    private RoleRepository roleRepository;
    @Autowired
    private LamePasswordEncoder lamePasswordEncoder;
	
	@Override
	public User findUserByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public User findUserByEmail(String email) {
		return userRepository.findByEmail(email);
	}
	
	@Override
	public void saveUser(User user) {
		user.setPassword(lamePasswordEncoder.encode(user.getPassword()));
        user.setEnabled(true);
        
        Role userAdminRole = roleRepository.findByRole("ADMIN");
        user.setRoles(new HashSet<Role>(Arrays.asList(userAdminRole)));
        
        System.out.println("USer is ready: " + user);
		userRepository.save(user);
	}

}