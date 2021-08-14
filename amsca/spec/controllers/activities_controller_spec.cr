require "./spec_helper"

def activities_hash
  {"description" => "Fake", "owner" => "Fake"}
end

def activities_params
  params = [] of String
  params << "description=#{activities_hash["description"]}"
  params << "owner=#{activities_hash["owner"]}"
  params.join("&")
end

def create_activities
  model = Activities.new(activities_hash)
  model.save
  model
end

class ActivitiesControllerTest < GarnetSpec::Controller::Test
  getter handler : Amber::Pipe::Pipeline

  def initialize
    @handler = Amber::Pipe::Pipeline.new
    @handler.build :web do
      plug Amber::Pipe::Error.new
      plug Amber::Pipe::Session.new
      plug Amber::Pipe::Flash.new
    end
    @handler.prepare_pipelines
  end
end

describe ActivitiesControllerTest do
  subject = ActivitiesControllerTest.new

  it "renders activities index template" do
    Activities.clear
    response = subject.get "/activities"

    response.status_code.should eq(200)
    response.body.should contain("activities")
  end

  it "renders activities show template" do
    Activities.clear
    model = create_activities
    location = "/activities/#{model.id}"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Show Activities")
  end

  it "renders activities new template" do
    Activities.clear
    location = "/activities/new"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("New Activities")
  end

  it "renders activities edit template" do
    Activities.clear
    model = create_activities
    location = "/activities/#{model.id}/edit"

    response = subject.get location

    response.status_code.should eq(200)
    response.body.should contain("Edit Activities")
  end

  it "creates a activities" do
    Activities.clear
    response = subject.post "/activities", body: activities_params

    response.headers["Location"].should eq "/activities"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "updates a activities" do
    Activities.clear
    model = create_activities
    response = subject.patch "/activities/#{model.id}", body: activities_params

    response.headers["Location"].should eq "/activities"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end

  it "deletes a activities" do
    Activities.clear
    model = create_activities
    response = subject.delete "/activities/#{model.id}"

    response.headers["Location"].should eq "/activities"
    response.status_code.should eq(302)
    response.body.should eq "302"
  end
end
