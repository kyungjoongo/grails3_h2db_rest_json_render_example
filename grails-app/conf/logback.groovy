import grails.util.BuildSettings
import grails.util.Environment
import org.springframework.boot.logging.logback.ColorConverter
import org.springframework.boot.logging.logback.WhitespaceThrowableProxyConverter

import java.nio.charset.Charset

conversionRule 'clr', ColorConverter
conversionRule 'wex', WhitespaceThrowableProxyConverter

// See http://logback.qos.ch/manual/groovy.html for details on configuration
appender('STDOUT', ConsoleAppender) {
    encoder(PatternLayoutEncoder) {
        charset = Charset.forName('UTF-8')

        pattern =
                '%clr(%d{yyyy-MM-dd HH:mm:ss.SSS}){faint} ' + // Date
                        '%clr(%5p) ' + // Log level
                        '%clr(---){faint} %clr([%15.15t]){faint} ' + // Thread
                        '%clr(%-40.40logger{39}){cyan} %clr(:){faint} ' + // Logger
                        '%m%n%wex' // Message
    }
}

/*

trace
debug
info
warn
error

*/
logger 'org.hibernate.type.descriptor.sql.BasicBinder', INFO, ['STDOUT']
logger 'org.hibernate.SQL', INFO, ['STDOUT']


def targetDir = BuildSettings.TARGET_DIR

//#######################################
// 로그 셋팅 부분..........
//########################################

//def targetDir = '.'

appender("FULL_STACKTRACE", FileAppender) {
    //file = "${targetDir}/stacktrace.log"
    file = "grails001_stacktrace.log"
    append = true
    encoder(PatternLayoutEncoder) {
        pattern = "%level %logger - %msg%n"
    }
}

//###############
//로그 어펜더 세팅
//###############
logger("grails001", INFO, ['FULL_STACKTRACE'], true)

root(INFO, ['STDOUT'])
