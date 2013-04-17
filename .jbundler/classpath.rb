JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << '/home/pyotr/.m2/repository/com/softserve/Sample/0.0.1-SNAPSHOT/Sample-0.0.1-SNAPSHOT.jar'
JBUNDLER_CLASSPATH << '/home/pyotr/.m2/repository/commons-lang/commons-lang/2.6/commons-lang-2.6.jar'
JBUNDLER_CLASSPATH << '/home/pyotr/.m2/repository/org/slf4j/slf4j-api/1.7.2/slf4j-api-1.7.2.jar'
JBUNDLER_CLASSPATH << '/home/pyotr/.m2/repository/org/slf4j/slf4j-jdk14/1.7.2/slf4j-jdk14-1.7.2.jar'
JBUNDLER_CLASSPATH.freeze
JBUNDLER_CLASSPATH.each { |c| require c }
