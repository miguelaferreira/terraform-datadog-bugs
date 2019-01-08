variable "datadog_api_key" {
  default = ""
}

variable "datadog_app_key" {
  default = ""
}

provider "datadog" {
  api_key = "${var.datadog_api_key}"
  app_key = "${var.datadog_app_key}"
}

resource "datadog_timeboard" "request_type_ignored" {
  description = "Request type ignored nad set to null in DataDog"

  "graph" {

    "request" {
      q    = "avg:system.cpu.user{*}"
      type = "line"
    }

    title = "Query value graph"
    viz   = "query_value"
  }

  "graph" {

    "request" {
      q    = "avg:system.cpu.user{*}"
      type = "line"
    }

    title = "Top list graph"
    viz   = "toplist"
  }

  title       = "Request type ignored nad set to null in DataDog"
}
