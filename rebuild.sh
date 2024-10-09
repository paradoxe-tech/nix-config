if [[ ! -f ./configuration.nix ]]; then
  echo "No config file found in working directory."
  exit 1
fi

sudo cp ./configuration.nix /etc/nixos/
sudo nixos-rebuild switch

if [[ $? -eq 0 ]]; then
  echo "NixOS rebuilt successfully."
else
  echo "Error while rebuilding NixOS."
  exit 1
fi