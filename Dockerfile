FROM gcr.io/cloud-builders/git

COPY ./bin /freshtracks/bin

RUN mkdir -p /freshtracks/pkg && \
    curl https://storage.googleapis.com/kubernetes-helm/helm-v2.9.1-linux-amd64.tar.gz --output /freshtracks/pkg/helm-v2.9.1-linux-amd64.tar.gz && \
    tar -zxvf /freshtracks/pkg/helm-v2.9.1-linux-amd64.tar.gz -C /freshtracks/pkg && \
    mv /freshtracks/pkg/linux-amd64/helm /freshtracks/bin/helm

ENTRYPOINT [ "/freshtracks/bin/publish.sh" ]