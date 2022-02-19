# Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


# Arquivo com declaração de variáveis que serão utilizadas na criação de recursos no OCI


    #   variable "compartment_ocid" {
	#      default = "ocid1.tenancy.oc1..aaaaaaaajpcythfl3tcrxvfuh5bdjprx57v2adsqwkzfdy6l3hv6hmcsza7q"
	#   }
    #   variable "tenancy_ocid" {
	#   	 default = "ocid1.tenancy.oc1..aaaaaaaajpcythfl3tcrxvfuh5bdjprx57v2adsqwkzfdy6l3hv6hmcsza7q"
	#   }
    #   variable "region" {
	#   	 default = "UAE East (Dubai)"
	#   }
	  
      variable "instance_display_name" {
	  	 default = "testCompute"
	  }
      variable "ipxe_script" {
	  	 default = ""
	  }
      variable "preserve_boot_volume" {
	  	 default = "false"
	  }
      variable "boot_volume_size_in_gbs" {
	  	 default = "50"
	  }
      variable "shape" {
	  	 default = "VM.Standard.E3.Flex"
	  }
      variable "assign_public_ip" {
	  	 default = "true"
	  }
      variable "vnic_name" {
	  	 default = "primaryVNIC"
	  }
      variable "hostname_label" {
	  	 default = "myHost"
	  }
      variable "private_ip" {
	  	 default = "18.0.0.5"
	  }
      variable "skip_source_dest_check" {
	  	 default = "false"
	  }
      variable "subnet_ocid" {
	  	 default = ""
	  }
      variable "ssh_public_key" {
	  	 default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCRDpKXGuu+VoidrwN4Htfg6otp8F1jNWovXOz+m9MZOwLMF997OvoHjPJ8LJBGsxLoQolzS+riZxqs4SYo0rkj9VzYR7gdNJ+R/9T55c2RnKWVJ/b6wK9AR4Kc9BU+oQG0KD0OLSJM2JmI95LRhgxiBd+v5/rNEl6uBuudROK/agbD4Eup2fGiiozbgmisg9cULyLzVOSpIPPYAVlpHB8aNo7c8fByPytX9zt11PgI0l3UTs8u/BggZ4uuG6n1Hp+8qtDickp0lfRcC8tbC/w4AnLlRPq0koy84eq5GzClwUzJBJSTn7wY2vf/FT9OtuZD4eagaEAxLxLXirn5PoeV ssh-key-2022-02-18"
	  }
      variable "user_data" {
	  	 default = ""
	  }
      variable "instance_timeout" {
	  	 default = "25m"
	  }
      variable "block_storage_size_in_gbs" {
	  	 default = "50"
	  }
      variable "attachment_type" {
	  	 default = "iscsi"
	  }
      variable "use_chap" {
	  	 default = "true"
	  }
      variable "resource_platform" {
	  	 default = "linux"
	  }
      
      variable "instance_os" {
        description = "Operating system for compute instances"
        default     = "Oracle Linux"
      }

      variable "linux_os_version" {
        description = "Operating system version for all Linux instances"
        default     = "7.9"
      }
	  
      variable "instance_ocpus" {
        default = 1
      }

      variable "instance_shape_config_memory_in_gbs" {
        default = 2
      }
	  
      provider "ocii" {
        tenancy_ocid     = var.tenancy_ocid
        region           = var.region
      }
    