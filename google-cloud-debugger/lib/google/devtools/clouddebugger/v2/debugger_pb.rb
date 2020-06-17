# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/clouddebugger/v2/debugger.proto


require 'google/protobuf'

require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/devtools/clouddebugger/v2/data_pb'
require 'google/protobuf/empty_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.devtools.clouddebugger.v2.SetBreakpointRequest" do
    optional :debuggee_id, :string, 1
    optional :breakpoint, :message, 2, "google.devtools.clouddebugger.v2.Breakpoint"
    optional :client_version, :string, 4
  end
  add_message "google.devtools.clouddebugger.v2.SetBreakpointResponse" do
    optional :breakpoint, :message, 1, "google.devtools.clouddebugger.v2.Breakpoint"
  end
  add_message "google.devtools.clouddebugger.v2.GetBreakpointRequest" do
    optional :debuggee_id, :string, 1
    optional :breakpoint_id, :string, 2
    optional :client_version, :string, 4
  end
  add_message "google.devtools.clouddebugger.v2.GetBreakpointResponse" do
    optional :breakpoint, :message, 1, "google.devtools.clouddebugger.v2.Breakpoint"
  end
  add_message "google.devtools.clouddebugger.v2.DeleteBreakpointRequest" do
    optional :debuggee_id, :string, 1
    optional :breakpoint_id, :string, 2
    optional :client_version, :string, 3
  end
  add_message "google.devtools.clouddebugger.v2.ListBreakpointsRequest" do
    optional :debuggee_id, :string, 1
    optional :include_all_users, :bool, 2
    optional :include_inactive, :bool, 3
    optional :action, :message, 4, "google.devtools.clouddebugger.v2.ListBreakpointsRequest.BreakpointActionValue"
    optional :strip_results, :bool, 5
    optional :wait_token, :string, 6
    optional :client_version, :string, 8
  end
  add_message "google.devtools.clouddebugger.v2.ListBreakpointsRequest.BreakpointActionValue" do
    optional :value, :enum, 1, "google.devtools.clouddebugger.v2.Breakpoint.Action"
  end
  add_message "google.devtools.clouddebugger.v2.ListBreakpointsResponse" do
    repeated :breakpoints, :message, 1, "google.devtools.clouddebugger.v2.Breakpoint"
    optional :next_wait_token, :string, 2
  end
  add_message "google.devtools.clouddebugger.v2.ListDebuggeesRequest" do
    optional :project, :string, 2
    optional :include_inactive, :bool, 3
    optional :client_version, :string, 4
  end
  add_message "google.devtools.clouddebugger.v2.ListDebuggeesResponse" do
    repeated :debuggees, :message, 1, "google.devtools.clouddebugger.v2.Debuggee"
  end
end

module Google
  module Devtools
    module Clouddebugger
    end
  end
end
module Google::Devtools::Clouddebugger::V2
  SetBreakpointRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.SetBreakpointRequest").msgclass
  SetBreakpointResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.SetBreakpointResponse").msgclass
  GetBreakpointRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.GetBreakpointRequest").msgclass
  GetBreakpointResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.GetBreakpointResponse").msgclass
  DeleteBreakpointRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.DeleteBreakpointRequest").msgclass
  ListBreakpointsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.ListBreakpointsRequest").msgclass
  ListBreakpointsRequest::BreakpointActionValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.ListBreakpointsRequest.BreakpointActionValue").msgclass
  ListBreakpointsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.ListBreakpointsResponse").msgclass
  ListDebuggeesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.ListDebuggeesRequest").msgclass
  ListDebuggeesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.clouddebugger.v2.ListDebuggeesResponse").msgclass
end