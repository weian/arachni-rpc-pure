=begin
                  Arachni
  Copyright (c) 2010-2011 Tasos "Zapotek" Laskos <tasos.laskos@gmail.com>

  This is free software; you can copy and distribute and modify
  this program under the term of the GPL v2.0 License
  (See LICENSE file for details)

=end

Gem::Specification.new do |s|
      require File.expand_path( File.dirname( __FILE__ ) ) + '/lib/arachni/rpc/pure/version'

      s.name              = "arachni-rpc-pure"
      s.version           = Arachni::RPC::Pure::VERSION
      s.date              = Time.now.strftime('%Y-%m-%d')
      s.summary           = "Pure Ruby client for Arachni-RPC."
      s.homepage          = "https://github.com/Arachni/arachni-rpc-pure"
      s.email             = "tasos.laskos@gmail.com"
      s.authors           = [ "Tasos Laskos" ]

      s.files             = %w( README.md Rakefile LICENSE.md CHANGELOG.md )
      s.files            += Dir.glob("lib/**/**")
      s.files            += Dir.glob("examples/**/**")
      s.test_files        = Dir.glob("examples/**/**")
      s.test_files       += Dir.glob("spec/**/**")

      s.extra_rdoc_files  = %w( README.md LICENSE.md CHANGELOG.md )
      s.rdoc_options      = ["--charset=UTF-8"]

      s.description = <<description
        EventMachine based RPC client and server capable of a few thousands requests per second (depending on call size, network conditions and the like).
        It supports TLS encryption, asynchronous and synchronous requests and is capable of handling remote asynchronous calls that require a block.
description
end