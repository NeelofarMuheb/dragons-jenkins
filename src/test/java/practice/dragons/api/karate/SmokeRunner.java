package practice.dragons.api.karate;

import com.intuit.karate.junit5.Karate;

public class SmokeRunner {


		@Karate.Test
		public Karate testrunner() {
			return Karate.run("classpath:features")
					.tags("Regrassion");
		

	

	}
	}
