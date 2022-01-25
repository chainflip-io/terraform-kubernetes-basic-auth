variable "namespace" {
  type        = string
  description = "Which namespace to place the basic auth secret in once created."
}

variable "name" {
  type        = string
  description = "Name of the basic auth secret to create."
}

variable "annotations" {
  type        = map(string)
  description = "Any annotations you would like to include in the metadata."
}