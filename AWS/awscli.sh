
# todo: installation

aws configure
# setup credentials for awscli

# todo: configure multiple accounts


###############################

aws s3 ls
# is like doing ls on root folder

aws s3 ls s3://sandbox-l2v
# ls on folder

aws s3 ls s3://sandbox-l2v --recursive
# ls on folder and subfolders

aws s3 cp s3://sandbox-l2v/datasets/ml-1m/rmse/ /Users/jaimealmeida/repos/worklog/7-25 --recursive
# to copy all files in folder from s3 to local folder
