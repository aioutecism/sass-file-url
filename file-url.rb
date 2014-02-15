module Sass::Script::Functions
    def file_url(filePath)
        assert_type filePath, :String
        filePath = filePath.value
        sassPath = ARGV[0] # Maybe

        relativePath = File.dirname(sassPath) + "/#{filePath}"
        mtime        = File.mtime(relativePath).to_i.to_s

        Sass::Script::String.new("url(#{filePath}?#{mtime})")
    end
    declare :file_url, :args => [:filePath]
end
