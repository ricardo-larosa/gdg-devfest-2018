# GDG DevFest 2018 - Cloud Track


## Local Development (not using Google Cloud Console)

### Installing Terraform

#### MacOs
* `brew install terraform` - https://brewformulas.org/Terraform

### Linux
* Download the terraform binary - https://www.terraform.io/downloads.html
* Make sure is available on the PATH. You need to add it to your ~/.profile or ~/.bashrc file. 
    ```
    export PATH="$PATH:/path/to/terraform"
    ```
* Then update
    ```
    source ~/.profile 
    or
    source ~/.bashrc
    ```

### Installing go

#### Using Binaries for Windows, MacOs and Linux
* https://golang.org/dl/


#### MacOs (Brew)
* `brew install go` - https://formulae.brew.sh/formula/go
#### Ubuntu
* https://github.com/golang/go/wiki/Ubuntu

#### Other Linux
* Use tarballs - https://dl.google.com/go/go1.11.2.linux-amd64.tar.gz

### Setting up GOPATH
* https://github.com/golang/go/wiki/SettingGOPATH


### Optional: Visual Studio Code

### Go extension
* https://marketplace.visualstudio.com/items?itemName=ms-vscode.Go

## Aditional activity: extending terraform provider for Kaleido

```
export KALEIDO_API=https://console-eu.kaleido.io/api/v1
export KALEIDO_API_KEY=<YOUR-KEY>
```