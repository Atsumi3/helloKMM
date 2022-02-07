# HelloKMM

各Platformへのライブラリ生成

# iOS
Frameworkの生成
1. 掃除  
`./gradlew clean`
  
2. XCFramework生成  

```
./gradlew assembleReleaseXCFramework

// out
helloKMM/build/XCFrameworks/release/helloKMM.xcframework
```
3. ZIP圧縮  
```
zip -r helloKMM.xcframework.zip helloKMM/build/XCFrameworks/release/helloKMM.xcframework/
```
4. checksum計算  
```
swift package compute-checksum helloKMM.xcframework.zip
// out (example v1.0.2
e087d198d12aba8352fb8ed43d81402c8e4f865af175ed4b5a48926fb4bf63db
```
5. Package.swiftへ記述
```
//...
    targets: [
        .binaryTarget(
            name: "helloKMM",
            // GithubのReleasesにZipをアップする時のパス.
            // 2回目以降ならばアップロード予定のバージョンを書き換えれば良い
            url: "https://github.com/Atsumi3/helloKMM/releases/download/1.0.2/helloKMM.xcframework.zip",
            // 4で出力したチェックサム
            checksum: "e087d198d12aba8352fb8ed43d81402c8e4f865af175ed4b5a48926fb4bf63db"
        )
    ]
```
6. GitHubへRelease  
割愛
