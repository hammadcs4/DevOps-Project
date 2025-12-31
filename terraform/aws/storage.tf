resource "aws_db_instance" "devops" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "devopsdb"
  username             = "admin"
  password             = "password123"  # Change in production
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.rds.id]
  db_subnet_group_name = aws_db_subnet_group.devops.name
}

resource "aws_db_subnet_group" "devops" {
  name       = "devops-db-subnet"
  subnet_ids = [aws_subnet.public.id]

  tags = {
    Name = "devops-db-subnet"
  }
}

resource "aws_security_group" "rds" {
  name   = "rds-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Restrict in production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "devops" {
  bucket = "devops-storage-bucket-${random_id.bucket.hex}"
}

resource "random_id" "bucket" {
  byte_length = 8
}