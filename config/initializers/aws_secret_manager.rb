require 'aws-sdk-secretsmanager'

AWS_REGION_NAME = 'ap-northeast-1'.freeze
AWS_SECRET_ID = 'raisetech-live8-sample-app'.freeze
PROFILE_NAME = 'yuta-ushijima'


client = Aws::SecretsManager::Client.new(region: AWS_REGION_NAME, profile: PROFILE_NAME)

begin
  get_secret_value_response = client.get_secret_value(secret_id: AWS_SECRET_ID)
rescue Aws::SecretsManager::Errors::DecryptionFailure => e
  raise e
rescue Aws::SecretsManager::Errors::InternalServiceError => e
  raise e
rescue Aws::SecretsManager::Errors::InvalidParameterException => e
  raise e
rescue Aws::SecretsManager::Errors::InvalidRequestException => e
  raise e
rescue Aws::SecretsManager::Errors::ResourceNotFoundException => e
  raise e
rescue StandardError => e
  # For a list of exceptions thrown, see
  # https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_GetSecretValue.html
  raise e
end

secret = get_secret_value_response.secret_string
# Your code goes here.
if secret.present?
  secret_hash = JSON.parse(secret)
  ENV['PRODUCTION_MASTER_KEY'] = secret_hash['PRODUCTION_MASTER_KEY']
  ENV['DEVELOPMENT_MASTER_KEY'] = secret_hash['DEVELOPMENT_MASTER_KEY']
end
