resource "aws_instance" "p_instance"{
	ami="ami-0c7217cdde317cfec"
	instance_type="t2.micro"
	tags={
	Name="prv-instance"
}
}
