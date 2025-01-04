package com.krismarie.client.directory;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
class ClientDirectoryApplicationTests {

	@Test
	void passwordEncryptionMatches() {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(18);
		String encodedPassword = encoder.encode("admin");
		System.out.println("Encoded password: " + encodedPassword);
		assert encoder.matches("admin", encodedPassword);
	}

}
