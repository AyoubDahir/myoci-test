# Copyright (c) 2020, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.


# Arquivo com declaração de variáveis que serão utilizadas na criação de recursos no OCI


##### Variáveis com informações do Tenant #####

# ocid tenance id
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaajpcythfl3tcrxvfuh5bdjprx57v2adsqwkzfdy6l3hv6hmcsza7q"   
}

# region
variable "region" {
  default = "UAE East (Dubai)"
}

# compartment ocid
variable "compartment_ocid" {
  default = "oocid1.tenancy.oc1..aaaaaaaajpcythfl3tcrxvfuh5bdjprx57v2adsqwkzfdy6l3hv6hmcsza7q"
}

# Fonte de dados para a conexão do Terraform com o OCI
provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region     = var.region
}


##### variable with vcn inform #####

# Nome da VCN
variable "vcn_display_name" {
  default = "testVCN2"
}
 
# Bloco CIDR da VCN
variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

# Nome a ser utilizado no DNS Domain
# ex.: [vcn_dns_label].oraclevcn.com
variable "vcn_dns_label" {
  default = "vcnteste2"
}

# Nome da Subnet
variable "subnet_display_name" {
  default = "subnet"
}

# Bloco CIDR da Subnet
variable "subnet_cidr" {
  default = "10.0.0.0/24"
}

# Nome a ser utilizado no DNS Domain da Subnet
# ex.: [subnet_dns_label].[vcn_dns_label].oraclevcn.com
variable "subnet_dns_label" {
  default = "subnet"
}