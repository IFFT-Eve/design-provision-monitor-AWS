# TODO: Define the output variable for the lambda function.
output "aws__output"{
    value = aws_lambda_function.greet_lambda.id
}



