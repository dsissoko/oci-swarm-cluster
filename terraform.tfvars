# Copyright (c) 2020 Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.
# 

#############################################################################################################################
# NOTE: Before use the terraform local or CloudShell, you need to build the binaries of the application.                    #
#       Instructions here: https://github.com/marcelo-ochoa/oci-swarm-cluster/blob/master/deploy/basic/README.md#build    #
#                                                                                                                           #
#       If using Oracle Resource Manager, the stack already include the binaries. ORM does not use the tfvars               #
#############################################################################################################################

# OCI authentication
tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaacjarngxeigit7hlb6qyfgy5nl4jsq254iaiasz7wst37prcvc6a"
fingerprint      = "" # e.g.: "5f:53:..." or leave blank if using CloudShell
user_ocid        = "" # e.g.: "ocid1.user..." or leave blank if using CloudShell
private_key_path = "" # e.g.: "/users/user/.oci/oci_api_key.pem" or leave blank if using CloudShell
user_email       = "dsissoko@gmail.com"

# Deployment compartment
compartment_ocid = "ocid1.tenancy.oc1..aaaaaaaaacjarngxeigit7hlb6qyfgy5nl4jsq254iaiasz7wst37prcvc6a"

# region
region = "eu-paris-1"

# Compute
num_nodes                           = 2
instance_shape                      = "VM.Standard.E2.1.Micro"
instance_visibility                 = "Public"
generate_public_ssh_key             = true
public_ssh_key                      = ""
is_pv_encryption_in_transit_enabled = false

# Network Details
lb_shape             = "flexible"
lb_compartment_ocid  = "" # e.g.: "ocid1.tenancy.oc1....." 
create_secondary_vcn = false

# Autonomous Database
autonomous_database_license_model            = "LICENSE_INCLUDED" # LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE
autonomous_database_is_free_tier             = true
autonomous_database_visibility               = "Public"
autonomous_database_name                     = "OciSwarmDB"
autonomous_database_db_version               = "21c"
autonomous_database_cpu_core_count           = 1
autonomous_database_data_storage_size_in_tbs = 1


# Encryption (OCI Vault/Key Management/KMS)
use_encryption_from_oci_vault = false
create_new_encryption_key     = true
encryption_key_id             = ""

# Always Free only or support other shapes
use_only_always_free_elegible_resources = true

# Object Storage
object_storage_oci_swarm_media_compartment_ocid = "" # e.g.: "ocid1.tenancy.oc1....."
object_storage_oci_swarm_media_visibility       = "Public"
