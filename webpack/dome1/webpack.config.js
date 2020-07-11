const path = require('path');

module.exports = {
    mode: 'development',
    entry: './src/js/index.js',
    output: {
        path: path.resolve(__dirname, 'build'),
        filename: 'index.js'
    },
    module: {
        rules: [{
            test: /\.css$/i,
            use: ["style-loader", "css-loader", {
                loader: "postcss-loader",
                options: {
                    plugins: [
                        require('autoprefixer')
                    ]
                }
            }]
        }]
    }
}