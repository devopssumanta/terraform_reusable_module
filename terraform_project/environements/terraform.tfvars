dev-rg= {
    rg1={
    name="rg-dev-eastjapan"
    location="japaneast"
    }
    rg2={
    name="rg-dev-eastjapan1"
    location="japaneast"
    }
    rg3={
    name="rg-dev-eastjapan2"
    location="japaneast"
    }
    


}
dev-vnet={
    vnet1={
    name="dev-vnet-eastjapan"
    location="japaneast"
    resource_group_name="rg-dev-eastjapan"
    address_space=["10.0.0.0/16"]
}
}

dev-subnet={
    subnet1={
         name="dev1-subnet-eastjapan"
         resource_group_name="rg-dev-eastjapan"
         virtual_network_name="dev-vnet-eastjapan"
         address_prefixes=["10.0.1.0/24"]
    }
    subnet2={
        name="dev2_subnet-eastjapan"
        resource_group_name="rg-dev-eastjapan"
        virtual_network_name="dev-vnet-eastjapan"
        address_prefixes=["10.0.2.0/24"]
    }
   
}
dev-nic={
    nic1={
    name="dev-nic-eastjapan"
    location="japaneast"
    resource_group_name="rg-dev-eastjapan"
    subnet_name="dev1-subnet-eastjapan"
    vnet_name="dev-vnet-eastjapan"
    ip_config_name= "dev-nic_ip_config"  
}
    nic2={
        name="dev2-nic-eastjapan"
        location="japaneast"
        resource_group_name="rg-dev-eastjapan"
        subnet_name="dev2_subnet-eastjapan"
        vnet_name="dev-vnet-eastjapan"
        ip_config_name="dev-nic_ip_config"
    }
}

dev-vm = {
    vm1={
        name="frontend-vm"
        location="japaneast"
        resource_group_name="rg-dev-eastjapan"
        vm_size="Standard_D2s_v3"
        admin_username = "adminuser"
        admin_password = "P@$$w0rd1234!"
        nic_name="dev-nic-eastjapan"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
        publisher = "Canonical"
        offer     = "ubuntu-24_04-lts"
        sku       = "server"
        version   = "latest"
        
    }
    vm2={
        name="backned-vm"
        location="japaneast"
        resource_group_name="rg-dev-eastjapan"
        vm_size="Standard_D2s_v3"
        admin_username = "adminuser"
        admin_password = "P@$$w0rd1234!"
        nic_name="dev2-nic-eastjapan"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
        publisher = "Canonical"
        offer     = "ubuntu-24_04-lts"
        sku       = "server"
        version   = "latest"
    }
}