source ./test/helper.fish

function setup
  source ./test/helper.fish

  chruby_use $test_ruby_root >/dev/null
end

function -S teardown
  chruby_reset
end

test "$TESTNAME: chruby clears hash table"
  -z (hash)
end

test "$TESTNAME: chruby_use environment variable RUBY_ROOT"
  "$test_ruby_root" = "$RUBY_ROOT"
end

test "$TESTNAME: chruby_use environment variable RUBY_ENGINE"
  "$test_ruby_engine" = "$RUBY_ENGINE"
end

test "$TESTNAME: chruby_use environment variable RUBY_VERSION"
  "$test_ruby_version" = "$RUBY_VERSION"
end

test "$TESTNAME: chruby_use environment variable GEM_ROOT"
  "$test_ruby_root/lib/ruby/gems/$test_ruby_api" = "$GEM_ROOT"
end

test "$TESTNAME: chruby_use environment variable GEM_HOME"
  "$test_gem_home" = "$GEM_HOME"
end

test "$TESTNAME: chruby_use environment variable GEM_PATH"
  "$GEM_HOME:$GEM_ROOT" = "$GEM_PATH"
end

test "$TESTNAME: chruby_use adds ruby executable to PATH"
  "$test_ruby_root/bin/ruby" = (which ruby)
end
