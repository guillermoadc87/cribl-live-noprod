include {
  path = find_in_parent_folders()
}

inputs = {
  region         = "us-east-1"
  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDS/nG5KK3CQjeuZPIdsJGQfuFPjzZexSh9WHMvAVjVKbTEL05fwq6zNZCSpsgYeph2g49YvYfMmfXRyn3JtQIom2/kSJNkdsRLihjdIbHdyyuFESFwwNpkbpT3Hj9F9+ZmUeoQTgx8DHrrV3Jr3YvMxwQbxePewuMM7Br8IPEt34Tou4ohSxReVKDt3/3vMD3CSaWOP1a+epqFt51uRLW9KqRJI7mlIcuRgnJpk4DwYNlAUNT9PoxpNGBpj5vcTBwzP4QXMyzrztNrw07m0ZdpyTCeybzqd/7C9mrMCUWRXO2JLHuPpW1WSDINGbveocF+RgBTZlvAFPYnS0cJ6nbCjRvhMUwG+KuuAVy23YDYsoD3pfbuHfHPOozQEQmbPnDUU3u9ovvBm9yr07k2Ff0txBV6SRVwpQiDG/+EpxcvSgGNt63CwKwhBlIq0Vv5XeF6L1swBPhzqnrlzuiQGkWLU8qOITrNWexweqlNT7aN2ds+FSBpRcS2U7C3cUemwDU= guillermoadc@AM-MIA-LPT-C02ZJ7X8MD6P"
}

terraform {
  source = "git::https://github.com/guillermoadc87/cribl-tf-modules.git//root-modules/ec2?ref=main"
}
