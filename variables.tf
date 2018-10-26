variable "Project" {
  default = "StubHub-Test"
  description = "StubHub Testing Project"
}
variable "Region" {
  default = "us-central1"
}
variable "Zone" {
  default = "us-central1-c"
}
variable "StorageClass" {
  description = "The Storage Class of the new bucket. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  default     = "REGIONAL"
}
variable "ForceDestroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  default     = "false"
}
variable "MatchesStorageClass" {
  description = "Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, DURABLE_REDUCED_AVAILABILITY."
  type        = "list"
  default     = ["REGIONAL"]
}
variable "NumNewerVersions" {
  description = "Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition."
  default     = "10"
}
variable "VersioningEnabled" {
  description = "While set to true, versioning is fully enabled for this bucket."
  default     = "true"
}
variable "role_entity" {
  description = "List of role/entity pairs in the form ROLE:entity."
  default     = [
    "READER:vapalaniappan@stubhub.com",
    "OWNER:vkpalaniappan@raybeam.com",
  ]
}
variable "ActionType" {
  description = "The type of the action of this Lifecycle Rule. Supported values include: Delete and SetStorageClass."
  default     = "SetStorageClass"
}
variable "ActionStorageClass" {
  description = "The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  default     = "REGIONAL"
}
