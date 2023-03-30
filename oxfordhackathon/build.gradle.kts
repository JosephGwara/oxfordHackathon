import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
	id("org.springframework.boot") version "2.7.10"
	id("io.spring.dependency-management") version "1.0.15.RELEASE"
	kotlin("jvm") version "1.6.21"
	kotlin("plugin.spring") version "1.6.21"
}


group = "com.blockchainbulls"
version = "0.0.1-SNAPSHOT"
java.sourceCompatibility = JavaVersion.VERSION_1_8

repositories {
	mavenCentral()
	maven {url = uri("https://jitpack.io") }

}

dependencies {
	val KETHEREUM_VERSION = "0.81.7"
	implementation("org.springframework.boot:spring-boot-starter-web")
	implementation("com.fasterxml.jackson.module:jackson-module-kotlin")
	implementation("org.jetbrains.kotlin:kotlin-reflect")
	testImplementation("org.springframework.boot:spring-boot-starter-test")
	testImplementation("com.github.komputing.kethereum:abi:0.85.7")
	implementation ("com.github.walleth.kethereum:eip155:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:erc681:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:erc1450:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:erc20:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:extensions_transactions:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:flows:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:rpc:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:rpc_min3:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:model:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:crypto:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:crypto_impl_bouncycastle:${KETHEREUM_VERSION}")
	implementation ("com.github.walleth.kethereum:keystore:${KETHEREUM_VERSION}")
	implementation ("com.squareup.okhttp3:okhttp:3.12.0")
	implementation ("com.squareup.okio:okio:2.4.0")
	implementation ("com.github.walleth:khex:0.6")
}

tasks.withType<KotlinCompile> {
	kotlinOptions {
		freeCompilerArgs = listOf("-Xjsr305=strict")
		jvmTarget = "1.8"
	}
}

tasks.withType<Test> {
	useJUnitPlatform()
}
