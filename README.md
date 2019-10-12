# cp-kafka-connect-custom
Tooling to build a custom Confluent Platform Kafka Connect container with additional connectors from Confluent Hub.

![connect](https://user-images.githubusercontent.com/10326954/65959234-c465ca80-e451-11e9-8d66-7f43fae78ffb.png)

## Docker Hub

The containers are available on Docker Hub [HERE](https://hub.docker.com/r/robcowart/cp-kafka-connect-custom).

There are two container options, which can be identified by the the suffix added to their tags.

suffix | description
:---|:---
`_community` | Includes only those connectors released under the [Confluent Community License](http://www.confluent.io/confluent-community-license), or an Open Source license (e.g. MIT or Apache 2.0).
`_confluent` | Includes all connectors in the `_community` container, as well as those licensed under the [Confluent Software Evaluation License](https://www.confluent.io/software-evaluation-license).
