# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Dialogflow
      module V2
        # Represents a notification sent to Cloud Pub/Sub subscribers for
        # human agent assistant events in a specific conversation.
        # @!attribute [rw] conversation
        #   @return [::String]
        #     The conversation this notification refers to.
        #     Format: `projects/<Project ID>/conversations/<Conversation ID>`.
        # @!attribute [rw] participant
        #   @return [::String]
        #     The participant that the suggestion is compiled for.
        #     Format: `projects/<Project ID>/conversations/<Conversation
        #     ID>/participants/<Participant ID>`. It will not be set in legacy workflow.
        # @!attribute [rw] suggestion_results
        #   @return [::Array<::Google::Cloud::Dialogflow::V2::SuggestionResult>]
        #     The suggestion results payload that this notification refers to.
        class HumanAgentAssistantEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end