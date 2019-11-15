const CopyWebpackPlugin = require("copy-webpack-plugin");
const path = require("path");

module.exports = {
  output: {
    filename: "[name].js",
    path: path.join(__dirname, "/build/app")
  },

  resolve: {
    // Add '.ts' and '.tsx' as resolvable extensions.
    extensions: [".ts", ".tsx", ".js", ".json"],
    modules: ["src", "__tests__", "node_modules"]
  },
  node: {
    __dirname: false,
    __filename: false
  },
  plugins: [
    new CopyWebpackPlugin([
      { from: "src/assets", to: "assets" },
      { from: "src/renderer/index.html", to: "index.html" },
      { from: "package.json", to: "package.json" },
      { from: "README.md", to: "README.md" },
      { from: "LICENSE", to: "LICENSE" }
    ])
  ],

  // When importing a module whose path matches one of the following, just
  // assume a corresponding global variable exists and use that instead.
  // This is important because it allows us to avoid bundling all of our
  // dependencies, which allows browsers to cache those libraries between builds.
  externals: {}
};
