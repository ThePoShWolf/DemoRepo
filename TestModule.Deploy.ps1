Deploy "TestModule" {
    By PSGalleryModule {
        FromSource "Build\TestModule"
        To PSGallery
        WithOptions @{
            ApiKey = (Get-Content C:\tmp\psgal.txt)
        }
    }
}