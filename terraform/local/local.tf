resource "local_file" "learning"{
	filename="/home/ubuntu/DevOps/terraform/local/learning.txt"
	content = "Hey Genius!"
}
resource "random_string" "rand-str"{
	length=16
	special=true
}
output "rand-str"{
	value = random_string.rand-str[*].result
}
