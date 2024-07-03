const HtmlWebpackPlugin = require("html-webpack-plugin");
const CopyWebpackPlugin = require("copy-webpack-plugin");

module.exports = {
    entry: `${__dirname}/src/index.js`,
    output: {
        path: `${__dirname}/dist`,
        filename: "bundle-[contenthash].js",
        libraryTarget: "window"
    },
    optimization: {
        minimize: true
    },
    module: {},
    plugins: [
        new HtmlWebpackPlugin({ template: `${__dirname}/src/index.html` }),
        new CopyWebpackPlugin({patterns: [{ from: "assets", to: "assets" }]})
    ],
    mode: process.env.WEBPACK_SERVE ? "development" : "production"
};
