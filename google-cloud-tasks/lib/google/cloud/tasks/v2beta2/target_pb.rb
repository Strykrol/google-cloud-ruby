# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tasks/v2beta2/target.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/duration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.tasks.v2beta2.PullTarget" do
  end
  add_message "google.cloud.tasks.v2beta2.PullMessage" do
    optional :payload, :bytes, 1
    optional :tag, :string, 2
  end
  add_message "google.cloud.tasks.v2beta2.AppEngineHttpTarget" do
    optional :app_engine_routing_override, :message, 1, "google.cloud.tasks.v2beta2.AppEngineRouting"
  end
  add_message "google.cloud.tasks.v2beta2.AppEngineHttpRequest" do
    optional :http_method, :enum, 1, "google.cloud.tasks.v2beta2.HttpMethod"
    optional :app_engine_routing, :message, 2, "google.cloud.tasks.v2beta2.AppEngineRouting"
    optional :relative_url, :string, 3
    map :headers, :string, :string, 4
    optional :payload, :bytes, 5
  end
  add_message "google.cloud.tasks.v2beta2.AppEngineRouting" do
    optional :service, :string, 1
    optional :version, :string, 2
    optional :instance, :string, 3
    optional :host, :string, 4
  end
  add_enum "google.cloud.tasks.v2beta2.HttpMethod" do
    value :HTTP_METHOD_UNSPECIFIED, 0
    value :POST, 1
    value :GET, 2
    value :HEAD, 3
    value :PUT, 4
    value :DELETE, 5
  end
end

module Google
  module Cloud
    module Tasks
      module V2beta2
        PullTarget = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.PullTarget").msgclass
        PullMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.PullMessage").msgclass
        AppEngineHttpTarget = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineHttpTarget").msgclass
        AppEngineHttpRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineHttpRequest").msgclass
        AppEngineRouting = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.AppEngineRouting").msgclass
        HttpMethod = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tasks.v2beta2.HttpMethod").enummodule
      end
    end
  end
end
