# -- -*- mode: ruby; -*-
guard :shell do
  watch(%r{^(?!tests).*/.*\.(yml|j2)$}) do |m|
    puts "#{m[0]} changed - running tests"
    system('vagrant ssh -c "specs -p"')
  end
end
