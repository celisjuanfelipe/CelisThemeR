library(rstudioapi)

# Define el contenido del tema
tema <- '<?xml version="1.0" encoding="UTF-8"?>
<plist version="1.0">
<dict>
    <key>name</key>
    <string>Celis_Green</string>
    <key>settings</key>
    <array>
        <dict>
            <key>settings</key>
            <dict>
                <key>background</key>
                <string>#001E26</string>
                <key>foreground</key>
                <string>#B2B8C2</string>
                <key>caret</key>
                <string>#0AE65D</string>
                <key>invisibles</key>
                <string>#E3E5E7</string>
                <key>lineHighlight</key>
                <string>#003744</string>
                <key>selection</key>
                <string>#004A5A</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Comment</string>
            <key>scope</key>
            <string>comment</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#5C6370</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>String</string>
            <key>scope</key>
            <string>string</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#0AE65D</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Number</string>
            <key>scope</key>
            <string>constant.numeric</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#E34C46</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Keyword</string>
            <key>scope</key>
            <string>keyword</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#1C77C3</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Constant</string>
            <key>scope</key>
            <string>constant</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#56B6C2</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Identifier</string>
            <key>scope</key>
            <string>variable, support.variable</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#E5C07B</string>
            </dict>
        </dict>
        <dict>
            <key>name</key>
            <string>Preprocessor</string>
            <key>scope</key>
            <string>entity.name.function</string>
            <key>settings</key>
            <dict>
                <key>foreground</key>
                <string>#61AFEF</string>
            </dict>
        </dict>
    </array>
</dict>
</plist>'

# Escribe el tema a un archivo temporal
archivo_tema <- tempfile(fileext = ".tmTheme")
writeLines(tema, archivo_tema)

# Aplica el tema
rstudioapi::addTheme(archivo_tema, apply = TRUE)
