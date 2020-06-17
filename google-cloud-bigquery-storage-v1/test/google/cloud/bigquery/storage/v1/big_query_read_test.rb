# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/bigquery/storage/v1/storage_pb"
require "google/cloud/bigquery/storage/v1/storage_services_pb"
require "google/cloud/bigquery/storage/v1/big_query_read"

class ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_read_session
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::ReadSession.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_session = {}
    max_stream_count = 42

    create_read_session_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_read_session, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::CreateReadSessionRequest, request
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::Storage::V1::ReadSession), request.read_session
      assert_equal 42, request.max_stream_count
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_read_session_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_read_session({ parent: parent, read_session: read_session, max_stream_count: max_stream_count }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_read_session parent: parent, read_session: read_session, max_stream_count: max_stream_count do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_read_session ::Google::Cloud::Bigquery::Storage::V1::CreateReadSessionRequest.new(parent: parent, read_session: read_session, max_stream_count: max_stream_count) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_read_session({ parent: parent, read_session: read_session, max_stream_count: max_stream_count }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_read_session ::Google::Cloud::Bigquery::Storage::V1::CreateReadSessionRequest.new(parent: parent, read_session: read_session, max_stream_count: max_stream_count), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_read_session_client_stub.call_rpc_count
    end
  end

  def test_read_rows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a server streaming method.
    read_stream = "hello world"
    offset = 42

    read_rows_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :read_rows, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsRequest, request
      assert_equal "hello world", request.read_stream
      assert_equal 42, request.offset
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, read_rows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.read_rows({ read_stream: read_stream, offset: offset }) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.read_rows read_stream: read_stream, offset: offset do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.read_rows ::Google::Cloud::Bigquery::Storage::V1::ReadRowsRequest.new(read_stream: read_stream, offset: offset) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.read_rows({ read_stream: read_stream, offset: offset }, grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.read_rows ::Google::Cloud::Bigquery::Storage::V1::ReadRowsRequest.new(read_stream: read_stream, offset: offset), grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::ReadRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, read_rows_client_stub.call_rpc_count
    end
  end

  def test_split_read_stream
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    fraction = 3.5

    split_read_stream_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :split_read_stream, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamRequest, request
      assert_equal "hello world", request.name
      assert_equal 3.5, request.fraction
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, split_read_stream_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.split_read_stream({ name: name, fraction: fraction }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.split_read_stream name: name, fraction: fraction do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.split_read_stream ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamRequest.new(name: name, fraction: fraction) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.split_read_stream({ name: name, fraction: fraction }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.split_read_stream ::Google::Cloud::Bigquery::Storage::V1::SplitReadStreamRequest.new(name: name, fraction: fraction), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, split_read_stream_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::BigQueryRead::Client::Configuration, config
  end
end