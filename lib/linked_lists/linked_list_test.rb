require_relative "../../test_helper"
require_relative "linked_list"
require_relative "node"

describe LinkedList do
  describe "#get" do
    subject { LinkedList.generate(1, 2, 3, 4) }

    it "should return the node" do
      expect(subject.get(1).value).must_equal 1
      expect(subject.get(2).value).must_equal 2
      expect(subject.get(3).value).must_equal 3
      expect(subject.get(4).value).must_equal 4
    end

    describe "when querying an empty list" do
      it "should print an error message" do
        _ { LinkedList.new.get(1) }.must_output(/No node at index 1/)
      end
    end
  end

  describe "#append" do
    subject { LinkedList.new }

    it "should work for empty lists" do
      expect(subject.head).must_be_nil
      expect(subject.tail).must_be_nil

      subject.append Node.new(1)

      expect(subject.head.value).must_equal 1
      expect(subject.head).wont_be_nil
      expect(subject.tail).wont_be_nil
    end

    it "should work for populated lists" do
      subject = LinkedList.generate(1, 2, 3, 4)
      subject.append Node.new(5)

      expect(subject.tail.value).must_equal 5
    end
  end

  describe "#delete" do
    subject { LinkedList.generate(1, 2, 3, 4, 5) }

    it "should return nil if input node is nil" do
      subject.delete(nil, nil)

      expect(subject.head.value).must_equal 1
      expect(subject.tail.value).must_equal 5
    end

    it "should remove a head node" do
      node = subject.head
      prev_node = nil

      subject.delete(node, prev_node)

      expect(subject.head).wont_equal node
      expect(subject.head).must_equal node.next
    end

    it "should remove a tail node" do
      node = subject.tail
      prev_node = subject.get(4)

      # Make sure that prev_node is indeed 1 before the tail
      expect(prev_node.next).must_equal node

      subject.delete(node, prev_node)

      expect(subject.tail).must_equal prev_node
      expect(subject.tail.value).must_equal 4
      expect(subject.tail.next).must_be_nil
      expect(subject.get(3).next).must_equal subject.tail
    end

    it "should remove a node in the middle" do
      node = subject.get(3)
      prev_node = subject.get(2)

      subject.delete(node, prev_node)

      expect(prev_node.next.value).must_equal 4
      expect(subject.tail.value).must_equal 5
    end
  end

  describe "#create_cycle_at" do
    subject { LinkedList.generate(1, 2, 3, 4, 5) }

    it "should continue from the tail back to 3rd node" do
      target_node = subject.get(3)
      subject.create_cycle_at(target_node)

      expect(subject.tail.next).wont_be_nil
      expect(subject.tail.next).must_equal subject.get(3)
    end
  end

  describe "#cycle?" do
    subject { LinkedList.generate(1, 2, 3, 4, 5) }

    it "should return true when cycle exists" do
      target_node = subject.get(3)
      subject.create_cycle_at(target_node)

      expect(subject.cycle?).must_equal true
      expect(subject.tail.next).wont_be_nil
    end

    it "should return false when cycle does not exist" do
      expect(subject.cycle?).wont_equal true
      expect(subject.tail.next).must_be_nil
    end
  end

  describe "#cycle_length" do
    subject { LinkedList.generate(1, 2, 3, 4, 5, 6, 7, 8) }

    describe "edge cases" do
      it "should return -1 when no cycle present" do
        expect(subject.cycle_length).must_equal(-1)
      end
    end

    describe "base cases" do
      it "should calculate cycle length of 1" do
        subject.create_cycle_at(subject.get(8))
        expect(subject.cycle_length).must_equal 1
      end

      it "should calculate cycle length of 2" do
        subject.create_cycle_at(subject.get(7))
        expect(subject.cycle_length).must_equal 2
      end

      it "should calculate cycle length of 3" do
        subject.create_cycle_at(subject.get(6))
        expect(subject.cycle_length).must_equal 3
      end
    end

    describe "regular cases" do
      it "should calculate an odd cycle" do
        subject.create_cycle_at(subject.get(4))
        expect(subject.cycle_length).must_equal 5
      end

      it "should calculate an even cycle" do
        subject.create_cycle_at(subject.get(3))
        expect(subject.cycle_length).must_equal 6
      end

      it "should work when whole list is a cycle" do
        subject.create_cycle_at(subject.get(1))
        expect(subject.cycle_length).must_equal 8
      end
    end
  end

  describe "#median" do
    subject { LinkedList.new }

    describe "edge cases" do
      it "should return nil for an empty list" do
        expect(subject.median).must_be_nil
      end
    end

    describe "base cases" do
      it "should return first node in single node list" do
        [1].each { |i| subject.append(Node.new(i)) }
        expect(subject.median.value).must_equal 1
      end
    end

    describe "regular case" do
      it "should work for list of 2 nodes" do
        [1, 2].each { |i| subject.append(Node.new(i)) }
        expect(subject.median.value).must_equal 1
      end

      it "should work for list of 3 nodes" do
        [1, 2, 3].each { |i| subject.append(Node.new(i)) }
        expect(subject.median.value).must_equal 2
      end

      it "should work for list with an even amount of nodes" do
        [1, 2, 3, 4].each { |i| subject.append(Node.new(i)) }
        expect(subject.median.value).must_equal 2
      end

      it "should work for a list with an odd amount of nodes" do
        [1, 2, 3, 4, 5].each { |i| subject.append(Node.new(i)) }
        expect(subject.median.value).must_equal 3
      end
    end
  end

  describe "#cycle_head" do
    subject { LinkedList.generate(1, 2, 3, 4, 5, 6, 7, 8, 9) }

    it "should find the beginning of the cycle" do
      subject.create_cycle_at(subject.get(7))
      expect(subject.cycle_head).must_equal subject.get(7)
    end
  end
end
