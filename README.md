# monero-static-analysis-clang
Analyze statically the monero source code using clang tool


## Build Docker image

Clone this repository and build Docker image from Dockerfile

    ```bash
    git clone https://github.com/JesusRami/monero-static-analysis-clang.git
    cd monero-static-analysis-clang
    docker build -t monerotesting .
    ```
## Analyze statically Monero's source code.

Run a Docker container and execute tests

    ```bash
    docker run -it monerotesting /bin/bash
    ./run_checkers.sh
    ```

To execute a specific tests

    ```bash
    docker run -it monerotesting /bin/bash
    ./scripts/specific_test_script
    ```
