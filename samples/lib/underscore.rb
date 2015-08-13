require 'ffi'

module StringCustomTest
  extend FFI::Library
  ffi_lib 'c'
  ffi_lib './samples/lib/lib_underscore.so'
  attach_function :underscore_string, [:string], :string
  attach_function :test, [:string], :string
end

class Underscore
  def initialize(string)
    @string = string
  end

  def call_c
    StringCustomTest.underscore_string(@string)
  end

  def call_ruby
    @string
      .tr('-', '_')
      .downcase
  end

  def call_test
    StringCustomTest.test(@string)
  end
end
