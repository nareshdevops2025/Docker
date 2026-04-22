package com.example.hello;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
public class HelloApplicationTest {

    @Autowired
    private MockMvc mockMvc;

    /**
     * Test Case 1:
     * Verify Spring Boot application context loads successfully
     */
    @Test
    void contextLoads() {
        // If context fails, this test will fail automatically
    }

    /**
     * Test Case 2:
     * Verify GET / returns HTTP 200 (OK)
     */
    @Test
    void helloEndpointReturns200() throws Exception {
        mockMvc.perform(get("/"))
                .andExpect(status().isOk());
    }

    /**
     * Test Case 3:
     * Verify GET / returns expected response body
     */
    @Test
    void helloEndpointReturnsExpectedMessage() throws Exception {
        mockMvc.perform(get("/"))
                .andExpect(status().isOk())
                .andExpect(content().string("Hello Naresh, welcome to Kubernetes world"));
    }
}
