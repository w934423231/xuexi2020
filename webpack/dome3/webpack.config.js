const path = require('path')
module.exports = {
    mode: 'development',
    entry: './src/js/index.js',
    output: {
        path: path.resolve(__dirname, 'build'),
        filename: 'index.js'
    },
    module: {
        rules: [{
                test: /\.less$/i,
                use: ['style-loader', 'css-loader', 'less-loader']
            },
            // {
            //     test: /\.(js|jsx)$/i,
            //     use: {
            //         loader: 'babel-loader',
            //         options: {
            //             presets: ["@babel/preset-env"]
            //         }
            //     }
            // }
        ]
    },
    devtool: 'source-map'
}