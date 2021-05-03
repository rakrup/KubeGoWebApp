## Test Script

# Creating a directory for reports
echo "Creating a directory for HTML reports (name:Report)"
mkdir -p report

# Checking the Linting and static analysis of the golang code
echo "Checking the Linting for the code !!!"
golangci-lint run > ./report/lint_result.txt

echo "Running the Golang unit tests !!"
go test -v -coverprofile=coverage.out

echo "Writing Coverage report !! "
go tool cover -html=coverage.out -o ./report/$(date +"%Y_%m_%d_%I_%M_%p").html
