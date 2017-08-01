# spark-submit
spark-submit --deploy-mode [cluster] --class <class-name> <jar>
#spark-submit --deploy-mode cluster --class Main s3://sandbox-l2v/JARs/n2v3.jar

# If there is an error while executing .JAR
# use <applicationId> to get more precise details on the error
yarn logs -applicationId application_1497378457473_0012


# To monitor current job running
http://<IP>:20888/proxy/<application_1497378457473_0013>/jobs/
# Get <IP> from dashboard
# Get applicationID from EMR

# dynamic port forwarding with foxy-proxy in chrome
ssh -i <credentials-location> -ND 8157 hadoop@<master-public-dns>
