FROM cirss/repro-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/setup /repro/dist/
RUN bash /repro/dist/setup

USER repro

RUN repro.require proj-dev exports

CMD  /bin/bash -il
