package phsanet.service;

import phsanet.entitys.User;

public interface UserService {
	
	public User findUserByUserId(String userId);
	
}
