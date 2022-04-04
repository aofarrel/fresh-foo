version 1.0

task 🎊 {
  input {
    String unused
  }
  
  command <<<
    echo "🎉"
  >>>
  
  runtime {
    memory: "2 GB"
    docker: "ubuntu:latest"
    preemptibles: "1"
  }
}

workflow proof_of_concept {
  input {
    String unused
  }
  
  call 🎊 {
    input:
      unused = unused
  }
}