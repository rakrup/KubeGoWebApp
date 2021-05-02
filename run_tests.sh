## Test Script

echo "Checking the Linting for the code !!!"
golangci-lint run

echo "Running the Golang unit tests !!"
go test -v -coverprofile=coverage.out

echo "Creating a directory for HTML reports (name:Report)"
mkdir -p report

echo "Writing Coverage report !! "
go tool cover -html=coverage.out -o ./report/$(date +"%Y_%m_%d_%I_%M_%p").html
