module Contexts
  module Inputs

    def create_inputs
      @test_input = FactoryGirl.create(:input, _id: "testingid", dateTime: "1490279428334",
      type: "teacher begin talking", sessionId: "random1", sessionDesc: "Tuesday_10:30_3/20/17", sessionCond: 2, isUndo: false)
      @test_input2 = FactoryGirl.create(:input, _id: "testingid2", dateTime: "1490279428334",
      type: "teacher begin talking", sessionId: "random1", sessionDesc: "Tuesday_10:30_3/28/17", sessionCond: 2, isUndo: false)
    end

    def destroy_inputs
      @test_input.delete
      @test_input2.delete
    end
  end
end
