# Part 1

file = File.open("day2.txt")
input = file.read
program = input.split(',').map(&:to_i)

program[1] = 12
program[2] = 2

print program.size
print "\n"

i = 0
while i < program.size do
  if program[i] == 99
    break
  end
  op = program[i]
  a = program[i+1]
  b = program[i+2]
  c = program[i+3]
  if op == 1
    program[c] = program[a] + program[b]
  elsif op == 2
    program[c] = program[a] * program[b]
  else
    print "wtf\n"
    break
  end
  i = i+4
end

print "Part 1:\n"
print program[0]
print "\n"


# Part 2

file = File.open("day2.txt")
input = file.read
program = input.split(',').map(&:to_i)

def run(noun, verb, program)
  prog = program.dup
  prog[1] = noun
  prog[2] = verb

  i = 0
  while i < prog.size do
    if prog[i] == 99
      break
    end
    op = prog[i]
    a = prog[i+1]
    b = prog[i+2]
    c = prog[i+3]
    if op == 1
      prog[c] = prog[a] + prog[b]
    elsif op == 2
      prog[c] = prog[a] * prog[b]
    else
      break
    end
    i = i+4
  end

  if prog[0] == 19690720
    print "Part 2:\n"
    print noun
    print "\n"
    print verb
    print "\n"
  end
end

for i in 1..152 do
  for j in 1..152 do
    run(i, j, program)
  end
end
