# Build Backend
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS dotnetbuild
WORKDIR /source

COPY Backend/ ./
RUN dotnet restore

RUN dotnet publish -c Release -o /app --no-restore --self-contained false

FROM node:21.4.0-bullseye AS nodebuild
WORKDIR /frontend
COPY Frontend/RUN/ ./
RUN npm install
RUN npm run build

# Final image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /RUN
COPY --from=dotnetbuild /app ./
COPY --from=nodebuild /frontend/dist ./wwwroot/
EXPOSE 8080
ENTRYPOINT ["./RUN.Backend"]