package toy.toy;

import org.junit.jupiter.api.Test;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

class ToyTest {

    @Test
    void sum() {
        Toy toy = new Toy();
        assertThat(toy.sum(2, 3)).isEqualTo(5);
    }

    @Test
    void fail() {
        assertThat(0).isEqualTo(1);
    }
}