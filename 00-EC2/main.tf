resource "aws_instance" "docker" {
    ami = local.ami_id
    instance_type = "t3.micro"

    root_block_device {
        volume_size = 50
        volume_type = "gp3" # or "gp2", depending on your preference
    }
    
    user_data = file("docker.sh")

    tags ={
            Name = "docker"
          }
}
