scp -i c:/keys/mykey.pem run.sh  ubuntu@ec2-3-34-159-235.ap-northeast-2.compute.amazonaws.com:/home/ubuntu/app/myapp
ssh -i c:/keys/mykey.pem ubuntu@ec2-3-34-159-235.ap-northeast-2.compute.amazonaws.com "chmod +x /home/ubuntu/app/myapp/run.sh"
scp -i c:/keys/mykey.pem build/libs/*.jar  ubuntu@ec2-3-34-159-235.ap-northeast-2.compute.amazonaws.com:/home/ubuntu/app/myapp
ssh -i c:/keys/mykey.pem ubuntu@ec2-3-34-159-235.ap-northeast-2.compute.amazonaws.com "cd /home/ubuntu/app/myapp && ./run.sh myapp"

