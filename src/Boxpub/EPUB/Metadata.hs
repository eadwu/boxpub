module Boxpub.EPUB.Metadata
( generate ) where
  import Data.Text ( Text )
  import Text.Printf ( printf )

  metadata :: String
  metadata = "<dc:language>en-US</dc:language>\
    \<dc:title opf-type=\"main\">%s</dc:title>\
    \<!-- <dc:title opf-type=\"subtitle\">Book N</dc:title> -->\
    \<dc:creator opf-role=\"aut\">%s</dc:creator>\
    \<!-- <dc:creator opf-role=\"trl\">Translator</dc:creator> -->\
    \<!-- <dc:creator opf-role=\"edt\">Editor</dc:creator> -->\
    \<dc:date>2019</dc:date>\
    \<dc:rights>Copyright ©2019</dc:right"

  -- | Creates a valid metadata schema given the title and author.
  generate :: Text -> Text -> String
  generate = printf metadata
