require "fileutils"

def trancerate(button)
  answer_list = ['"expand"','"shrink"','"shift"']
  answer = ''
  if(button == 'a')
    answer = answer_list[0]
  end
  if(button == 'b')
    answer = answer_list[1]
  end
  if(button == 'c')
    answer = answer_list[2]
  end
  return answer
end

def createBIJson(name,button_input)
  button = trancerate(button_input)
  open("jsonfile/#{name}.json", 'w'){|f|
  str = "{
  \"version\":\"0.1\",
  \"module\":\"BI\",
  \"data\":{
    \"button\":#{button}
  }
}" 
  f.print str
  }
end

def deleteJson
  Dir.chdir 'jsonfile'
  FileUtils.rm(Dir.glob('*.json'))
end

#createBIJson('hoge','fuga')