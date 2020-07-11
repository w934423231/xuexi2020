const path = require("path")
module.exports = {
    mode: 'development',
    entry: './src/js/index',
    output: {
        path: path.resolve(__dirname, "build"),
        filename: 'index.js'
    },
    module: {
        rules: [{
                test: /\.css$/i,
                use: [
                    "style-loader",
                    "css-loader"
                ]
            },
            // {
            //     test: /\.(jpg|png|gif|jpeg)$/i,
            //     use: {
            //         loader: "file-loader",
            //         options: {
            //             outputPath: "image/",
            //             publicPath: 'build/image'
            //         }
            //     }

            // }
            {
                test: /\.(jpg|png|gif|jpeg)$/i,
                use: {
                    loader: "url-loader",
                    options: {
                        outputPath: "image/",
                        publicPath: 'build/image',
                        limit: 8 * 1024
                    }
                }

            }
        ]
    }
}