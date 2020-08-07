FROM ubuntu:18.04

RUN apt update

RUN apt install --yes curl \
  && apt install --yes wget \
  && apt install --yes nano \
  && apt install --yes telnet \
  && apt install --yes postgresql-client \
  && apt install --yes openssh-client \
  && apt install --yes gnupg
  
# Install gcloud  
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
  && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - \
  && apt-get update -y && apt-get install google-cloud-sdk -y
  
# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin
  
# Install kustomize
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash \
  && mv kustomize /usr/local/bin/
  
# Install sops
RUN curl --location -o /tmp/sops.deb https://github.com/mozilla/sops/releases/download/v3.5.0/sops_3.5.0_amd64.deb \
  && apt install /tmp/sops.deb \
  && rm /tmp/sops.deb
  
RUN mkdir -p /root/development