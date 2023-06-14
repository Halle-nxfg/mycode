/* /mycode/go-tf/main.tf */

provider "http" {}

data "http" "spock" {
  url = "http://0.0.0.0:2224/spock"

}
output "spock" {
  value = jsondecode(data.http.spock.response_body)
}
