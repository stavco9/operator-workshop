FROM ubi8/go-toolset as build

WORKDIR /opt/app-root
COPY cmd cmd
RUN go build cmd/hello/hello.go

############################################################

FROM ubi8/ubi-minimal

WORKDIR /opt/app-root
COPY --from=build /opt/app-root/hello /opt/app-root/hello

EXPOSE 8012
ENTRYPOINT ["./hello"]
