build {
  sources = [
    "source.azure-arm.vm",
    "source.amazon-ebs.vm",
    "source.googlecompute.vm"
  ]

  provisioner shell {
    execute_command = local.execute_command
    inline = ["apt update"]
  }

  provisioner shell {
    execute_command = local.execute_command
    inline = ["/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"]
    only = ["azure-arm"]
  }

}