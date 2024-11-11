# Use the official .NET 8 SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the .csproj file and restore any dependencies (via dotnet restore)
COPY Datetime/*.csproj ./
RUN dotnet restore

# Copy the rest of the application code
COPY Datetime ./Datetime

# Publish the app to the /out directory (this will be the final build output)
RUN dotnet publish Datetime/ -c Release -o out

# Use the official .NET 8 runtime image to run the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime

# Set the working directory inside the container
WORKDIR /app

# Copy the published output from the build image
COPY --from=build /app/out .

# Set the entry point for the container to run the app
ENTRYPOINT ["dotnet", "Datetime/Datetime.dll"]
