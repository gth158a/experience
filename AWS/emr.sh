# spark-submit
spark-submit --deploy-mode [cluster] --class <class-name> <jar>
#spark-submit --deploy-mode cluster --class Main s3://sandbox-l2v/JARs/n2v3.jar

# If there is an error while executing .JAR
# use <applicationId> to get more precise details on the error
yarn logs -applicationId application_1497378457473_0012
