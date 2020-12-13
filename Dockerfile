FROM minio/minio
ENV MINIO_ACCESS_KEY="minios3blabla"
ENV MINIO_SECRET_KEY="ripyougotit"
ENV PORT 9000
RUN echo $($PORT)
CMD ["server", "--address", ":$PORT", "/data"]
