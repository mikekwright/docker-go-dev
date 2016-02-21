GO Development Environment
----------------------------------

This is a docker container that I use as my go development environment.  This allows me to have a system fully catered towards
go development (including vim as the ide).  

## Usage

By default running this container starts in tmux allowing you to create multiple tabs if needed.  
You can test that go is working you can run the below command to see the output

    docker run -it mikewright/go-dev go

If you are using this as your development environment just attach the volume with your source code to the container and
you can start coding.  This volume can be mapped anywhere, but the image is specifically setup to have the volume mounted
at `/src`, including the GOPATH.      

    docker run -it -v $PWD:/src mikewright/go-dev

## Pieces

Pulls down the version of go defined by the dockerfile, and installs the vim-go plugin (using spf13 as the vim setup)    
