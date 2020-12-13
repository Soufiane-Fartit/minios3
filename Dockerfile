FROM minio/minio

ENV MINIO_HOME /opt/minio

ENV MINIO_ACCESS_KEY="minios3blabla"
ENV MINIO_SECRET_KEY="ripyougotit"

ENV PORT 9000

RUN mkdir -p ${MINIO_HOME}/scripts

RUN chmod -R 0777 ${MINIO_HOME}

COPY scripts/run.sh ${MINIO_HOME}/scripts/run.sh
RUN chmod 777 ${MINIO_HOME}/scripts/run.sh

WORKDIR ${MINIO_HOME}

ENTRYPOINT ["./scripts/run.sh"]
