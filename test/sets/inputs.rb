module Contexts
  module Inputs

    def create_inputs
      @test_input = FactoryGirl.create(:input, _id: "testingid", dateTime: "1490279428334",
      type: "teacher begin talking", sessionId: "random1", sessionDesc: "Tuesday_10:30_3/20/17", sessionCond: 2, isUndo: false)
      @test_input2 = FactoryGirl.create(:input, _id: "testingid2", dateTime: "1490279428334",
      type: "teacher begin talking", sessionId: "random1", sessionDesc: "Tuesday_10:30_3/28/17", sessionCond: 2, isUndo: false)

      @test_spring = FactoryGirl.create(:input, _id: "testingid3", dateTime: "1490128380707",
      type: "Students present", sessionId: "k2ePumq9MYQnRJhB3", sessionDesc: "SH208TA2", sessionCond: 2, isUndo: false)

      @test_spring2 = FactoryGirl.create(:input, _id: "testingid3b", dateTime: "1490733907000",
      type: "Students present", sessionId: "k2ePumq9MYQnRJhB3", sessionDesc: "SH208TA2", sessionCond: 2, isUndo: false)
      # Tuesday, March 28, 2017 4:45:07 PM GMT-04:00

      @test_summer = FactoryGirl.create(:input, _id: "testingid4", dateTime: "1499346347092",
      type: "Students present", sessionId: "k2ePumq9MYQnRJhB3", sessionDesc: "SH208TA2", sessionCond: 2, isUndo: false)

      @test_summer2 = FactoryGirl.create(:input, _id: "testingid4b", dateTime: "1499435107000",
      type: "Students present", sessionId: "k2ePumq9MYQnRJhB3", sessionDesc: "SH208TA2", sessionCond: 2, isUndo: false)

    end

    def destroy_inputs
      @test_input.delete
      @test_input2.delete
      @test_spring.delete
      @test_summer.delete
    end
  end
end
