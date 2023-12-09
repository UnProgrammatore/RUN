# Build Backend
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS dotnetbuild
WORKDIR /source

COPY Backend/* .
RUN dotnet restore

RUN dotnet publish -c Release -o /app --no-restore --self-contained false

# Final image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /RUN
COPY --from=dotnetbuild /app ./
COPY Frontend/* ./wwwroot/
EXPOSE 8080
ENTRYPOINT ["./RUN.Backend"]