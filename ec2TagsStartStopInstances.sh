#!/bin/bash

#The following code is for creating a tag from a list of instances for EC2 using BASH.

ARRAY=( i-0d3h43yhv3n4m12sd i-0d345kj2k234db )
region=ap-south-1

for instance_id in "${ARRAY[@]}"; do
    aws ec2 create-tags --resources $instance_id --region $region --tags Key=testkey,Value=testvalue Key=testkey1,Value=testvalue1 Key=testkey2,Value=testvalue2
done


# The following code is for deleting a tag in aws.

ARRAY=( i-0d3h43yhv3n4m12sd i-0d345kj2k234db  )
region=ap-south-1

for instance_id in "${ARRAY[@]}"; do
    aws ec2 delete-tags --resources $instance_id --region $region --tags Key=testkey,Value=testvalue Key=testkey1,Value=testvalue1 Key=testkey2,Value=testvalue2
done

#The following codes is for starting ec2 instances from a list of instances provided in an array. 

ARRAY=( i-0d3h43yhv3n4m12sd i-0d345kj2k234db  )

for instance_id in "${ARRAY[@]}"; do
    aws ec2 start-instances --instance-ids $instance_id
done


#The following code is for stopping ec2 instances from a list of array's.
#!/bin/bash
ARRAY=( i-0d3h43yhv3n4m12sd i-0d345kj2k234db  )

for instance_id in "${ARRAY[@]}"; do
    aws ec2 stop-instances --instance-ids $instance_id
done
