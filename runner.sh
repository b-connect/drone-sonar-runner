if [ -z "$PLUGIN_SONAR_HOST" ]; then
    echo "Need to set SONAR_HOST"
    exit 0
fi
if [ -z "$PLUGIN_SONAR_SOURCE" ]; then
    echo "Need to set SONAR_SOURCE"
    exit 0
fi
if [ -z "$PLUGIN_SONAR_KEY" ]; then
    echo "Need to set SONAR_KEY"
    exit 0
fi

java -jar /opt/sonar/runner.jar -Dsonar.host.url=$PLUGIN_SONAR_HOST -Dsonar.sources=$PLUGIN_SONAR_SOURCE -Dsonar.projectKey=$PLUGIN_SONAR_KEY