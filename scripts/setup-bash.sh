#!/usr/bin/env bash
# curl https://raw.githubusercontent.com/craigthackerx/craigthackerx-personal/dev/scripts/setup.sh | bash -s -- 'Craig Thacker' 'craigthackerx@gmail.com' >> ~/.bashrc && source ~/.bashrc
full_name="${1:-Craig Thacker}"
email_address="${2:-craigthackerx@gmail.com}"

git config --global alias.a "add --all"
git config --global alias.c "commit"
git config --global alias.p "push"
git config --global core.editor nano
git config --global user.name "${full_name}"
git config --global user.email "${email_address}" && \
echo "alias stfi='curl https://raw.githubusercontent.com/libre-devops/utils/dev/scripts/terraform/tf-sort.sh | bash -s -- input.tf input.tf'" >> ~/.bashrc && source ~/.bashrc && \
echo "alias stfo='curl https://raw.githubusercontent.com/libre-devops/utils/dev/scripts/terraform/tf-sort.sh | bash -s -- output.tf output.tf'" >> ~/.bashrc && source ~/.bashrc

