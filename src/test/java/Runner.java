import com.intuit.karate.Results;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Runner {
    @Test
    void testsRunner() {
        Results results = com.intuit.karate.Runner.path("classpath:*").outputCucumberJson(true).tags("~@disabled")
                .outputJunitXml(true).parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
