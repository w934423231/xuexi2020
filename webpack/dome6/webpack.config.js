const path = require("path");

module.exports = {
    mode: "development",
    entry: "./src/js/index.js",
    output: {
        path: path.resolve(__dirname, "build"),
        filename: "index.js"
    },
    module: {
        rules: [{
            test: /\.js$/i,
            loader: "eslint-loader",
            exclude: /node_modules|bower_modules/,
            options: {

            }
        }]
    }
};