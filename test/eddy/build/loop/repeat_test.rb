require "test_helper"

module BuildTest
  module LoopTest
    class RepeatTest < Minitest::Test

      def test_n1
        want = <<~RB.strip
          # (see Eddy::TransactionSets::TS850::Loops::N1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @n1 = Eddy::Segments::N1.new(store)
              @n3 = Eddy::Segments::N3.new(store)
              @n4 = Eddy::Segments::N4.new(store)
              super(
                store,
                @n1,
                @n3,
                @n4,
              )
            end

            # (see Eddy::Segments::N1)
            #
            # @yieldparam [Eddy::Segments::N1] n1
            # @return [Eddy::Segments::N1]
            def N1()
              yield(@n1) if block_given?
              return @n1
            end

            # (see Eddy::Segments::N3)
            #
            # @yieldparam [Eddy::Segments::N3] n3
            # @return [Eddy::Segments::N3]
            def N3()
              yield(@n3) if block_given?
              return @n3
            end

            # (see Eddy::Segments::N4)
            #
            # @yieldparam [Eddy::Segments::N4] n4
            # @return [Eddy::Segments::N4]
            def N4()
              yield(@n4) if block_given?
              return @n4
            end
          end
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/n1.loop.yml"))
        have = Eddy::Build::Loop::Repeat.new(summary, "TS850").ginny_class.render()
        assert_equal(want, have)
      end

      def test_it1
        want = <<~RB.strip
          # (see Eddy::TransactionSets::TS810::Loops::IT1::Base)
          class Repeat < Eddy::Models::Loop::Repeat
            # @param store [Eddy::Data::Store]
            # @return [void]
            def initialize(store)
              @it1 = Eddy::Segments::IT1.new(store)
              @ctp = Eddy::Segments::CTP.new(store)
              @l_pid = Eddy::TransactionSets::TS810::Loops::PID::Base.new(store)
              @l_sac = Eddy::TransactionSets::TS810::Loops::SAC::Base.new(store)
              super(
                store,
                @it1,
                @ctp,
                @l_pid,
                @l_sac,
              )
            end

            # (see Eddy::Segments::IT1)
            #
            # @yieldparam [Eddy::Segments::IT1] it1
            # @return [Eddy::Segments::IT1]
            def IT1()
              yield(@it1) if block_given?
              return @it1
            end

            # (see Eddy::Segments::CTP)
            #
            # @yieldparam [Eddy::Segments::CTP] ctp
            # @return [Eddy::Segments::CTP]
            def CTP()
              yield(@ctp) if block_given?
              return @ctp
            end

            # (see Eddy::TransactionSets::TS810::Loops::PID::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::PID::Repeat]
            # @return [void]
            def L_PID()
              if block_given?
                @l_pid.repeat()
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end

            # (see Eddy::TransactionSets::TS810::Loops::SAC::Base)
            #
            # @yieldparam [Eddy::TransactionSets::TS810::Loops::SAC::Repeat]
            # @return [void]
            def L_SAC()
              if block_given?
                @l_sac.repeat()
              else
                raise Eddy::Errors::Error, "No block given in loop iteration"
              end
              return nil
            end
          end
        RB
        summary = Eddy::Summary::Loop.from_file(file_fixture("schema/loops/it1.loop.yml"))
        have = Eddy::Build::Loop::Repeat.new(summary, "TS810").ginny_class.render()
        assert_equal(want, have)
      end

    end
  end
end
