
# Connectivity
You have selected the vwan networking option to build your Enteprise Scale platform. The following instructions guides you through the steps to follow.

## Select the correct branch for the landingzones code

Note you need to adjust the branch 2107.1 to deploy the connectivity services

## Virtual Wan

```bash
# login a with a user member of the caf-maintainers group
rover login -t set_your_tenant_name.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2107.1

export ARM_USE_AZUREAD=true
caf_env="sandpit"

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/contoso/platform/demo/level2/connectivity/virtual_wan \
  -tfstate connectivity_virtual_wan.tfstate \
  -env ${caf_env} \
  -level level2 \
  -a plan

```
