```kotlin

tasks.named<BootBuildImage>("bootBuildImage") {
println("--------------")
println(properties["docker_pw"] as String)
println("--------------")

    imageName.set("docker.io/kdkcom1234/commerce_exposed")
    publish.set(true)
    docker {
    	publishRegistry {
    		username.set(properties["docker_id"] as String)
    		password.set(properties["docker_pw"] as String)
    	}
    }

}

// ./gradlew bootBuildImage -Pdocker_id=도커id -Pdocker_pw=도커pw
// 패스워드의 특수문자(! 등)는 \를 붙인다.

// docker images rm 이미지명
// docker pull 이미지명


```
