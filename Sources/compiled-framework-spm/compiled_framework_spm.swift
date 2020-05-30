import Logging

let logger = Logger(label: "com.example.compiledFramework")

func foo() {
    logger.info("foo called")
}