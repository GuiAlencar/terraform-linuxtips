variable "image_id" {
  description = "O ID da AMI usada"
  type = string
  default = "ami-123456"

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}