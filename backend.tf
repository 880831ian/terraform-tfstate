terraform {
  backend "http" {
    address = "[Gitlab 網址]/api/v4/projects/[專案ID]/terraform/state/[服務名稱]"
    lock_address = "[Gitlab 網址]/api/v4/projects/[專案ID]/terraform/state/[服務名稱]/lock"
    unlock_address = "[Gitlab 網址]/api/v4/projects/[專案ID]/terraform/state/[服務名稱]/lock"
    username = "[Gitlab 帳號]"
    password = "[Gitlab 個人 token]"
    lock_method = "POST"
    unlock_method = "DELETE"
    retry_wait_min = 5
  }
}

terraform {
  backend "gcs" {
    bucket      = "pid-terraform-state"
    prefix      = "/aaa"
  }
}