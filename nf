#!/usr/bin/ruby

if ARGV.length < 1 then
  STDERR.puts 'expected output base'
  exit
end

base_str = ARGV[0]
base = {
  'BIN' => 2,
  'OCT' => 8,
  'DEC' => 10,
  'HEX' => 16,
}[base_str.upcase[0..2]] || Integer(base_str)

puts ((if ARGV.length >= 2 then ARGV[1..] else STDIN.read.split end).map do |s|
  Integer(s).to_s base
end)
