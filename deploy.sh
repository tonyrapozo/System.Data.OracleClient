ApiKey=$1
Version=$2

dotnet pack ./src/System.Data.OracleClient.csproj -o ./nuget/ -c Release --no-build --version-suffix $Version
dotnet nuget push ./nuget/System.Data.OracleClient.nupkg -k $ApiKey
