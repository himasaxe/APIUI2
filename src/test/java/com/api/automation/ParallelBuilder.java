package com.api.automation;

import org.junit.jupiter.api.Test;

import com.intuit.karate.Runner.Builder;

public class ParallelBuilder {

	
	@Test
	public void executeKarateTest() {
		Builder aRunner =new Builder();
		aRunner.path("claspath:tests");
		aRunner.parallel(5);
	}
}
