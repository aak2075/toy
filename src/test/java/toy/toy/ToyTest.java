package toy.toy;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

public class ToyTest {

    @Test
    void toy() {
        assertThat(1).isEqualTo(1);
    }

    @Test
    void failTest() {
        assertThat(1).isEqualTo(0);
    }
}
