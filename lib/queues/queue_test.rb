require_relative "../../test_helper"
require_relative "queue"

describe Queue do
  describe "regular cases" do
    it "should #enqueue" do
      subject = Queue.new(size: 4)
      subject.enqueue 10
      expect(subject.q_length).must_equal(1)
      subject.enqueue 20
      subject.enqueue 30
      expect(subject.q_length).must_equal(3)
    end

    it "should #dequeue" do
      subject = Queue.new(size: 4)
      subject.enqueue 10
      subject.enqueue 20
      subject.enqueue 30
      expect(subject.q_length).must_equal(3)

      subject.dequeue
      expect(subject.q_length).must_equal(2)

      subject.dequeue
      subject.dequeue
      expect(subject.q_length).must_equal(0)
    end

    it "should not add to a full queue" do
      subject = Queue.new(size: 4)
      4.times { subject.enqueue 1 }
      expect(subject.q_length).must_equal(4)
      expect(proc { subject.enqueue 1 }).must_raise Queue::QueueFullError
    end

    it "should not dequeue an empty queue" do
      subject = Queue.new(size: 4)
      expect(proc { subject.dequeue }).must_raise Queue::QueueEmptyError
    end
  end
end
