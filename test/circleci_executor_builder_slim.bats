#!/usr/bin/env bats

@test "docker health" {
  run bash -c "docker exec circleci-executor-builder-slim-edge docker version"
  [[ "${output}" =~ "23.0" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge jq --version"
  [[ "${output}" =~ "1.6" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge snyk --version"
  [[ "${output}" =~ "1.1150" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge bats -v"
  [[ "${output}" =~ "1.9" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge inspec --version"
  [[ "${output}" =~ "5.21" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge conftest --version"
  [[ "${output}" =~ "0.41" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge cosign version"
  [[ "${output}" =~ "2.0" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge syft version"
  [[ "${output}" =~ "0.79" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-slim-edge oras version"
  [[ "${output}" =~ "1.0" ]]
}
