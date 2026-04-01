FROM  gcc:latest

COPY hello.c /hello.c
RUN chmod +x /hello.c
RUN gcc hello.c -o hello
CMD ["./hello"]
