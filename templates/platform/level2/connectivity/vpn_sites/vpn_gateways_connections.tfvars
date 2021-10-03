vpn_gateway_connections = {
  #
  # Production
  #

  #prod
  prod = {
    name                      = "production"
    internet_security_enabled = true // propagate to default route table
    vpn_site = {
      key = "prod"
    }
    virtual_hub = {
      lz_key = "connectivity_virtual_hub_prod"
      key    = "prod"
    }

    vpn_links = {
      prod = {
        name           = "prod"
        shared_key     = "SmPLdTC8cmFM8y3r" # 16 chars Alpha Numerical
        bgp_enabled    = false
        bandwidth_mbps = 100
        link_index     = 0
        protocol       = "IKEv2"
        ipsec_policies = {
          policy1 = {
            dh_group                 = "DHGroup24"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "None"
            sa_data_size_kb          = "102400000"
            sa_lifetime_sec          = "3600"
          }
        }
      }
    }
  }
  #dev
  dev = {
    name                      = "dev"
    internet_security_enabled = true // propagate to default route table
    vpn_site = {
      key = "dev"
    }
    virtual_hub = {
      lz_key = "connectivity_virtual_hub_dev"
      key    = "dev"
    }
    vpn_links = {
      dev = {
        name           = "dev"
        shared_key     = "rPED37KfPn6YMTxe" # 16 chars Alpha Numerical
        bgp_enabled    = false
        bandwidth_mbps = 100
        link_index     = 0
        protocol       = "IKEv2"
        ipsec_policies = {
          policy1 = {
            dh_group                 = "DHGroup24"
            ike_encryption_algorithm = "AES256"
            ike_integrity_algorithm  = "SHA256"
            encryption_algorithm     = "AES256"
            integrity_algorithm      = "SHA256"
            pfs_group                = "None"
            sa_data_size_kb          = "102400000"
            sa_lifetime_sec          = "3600"
          }
        }
      }
    }
  }
}