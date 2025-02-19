// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2016-2021 The Khronos Group Inc.
// SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "SPIRV-Cross",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPIRV-Cross",
            targets: ["SPIRV-Cross"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: "https://github.com/ncthbrt/glm", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPIRV-Cross",
            dependencies: [],
            path: ".",
            exclude: ["CMakeLists.txt",
                      "CODE_OF_CONDUCT.adoc",
                      "LICENSE",
                      "LICENSES",
                      "Makefile",
                      "README.md",
                      "appveyor.yml",
                      "build_glslang_spirv_tools.sh",
                      "checkout_glslang_spirv_tools.sh",
                      "cmake",
                      "format_all.sh",
                      "gn",
                      "main.cpp",
                      "pkg-config",
                      "reference",
                      "samples",
                      "shaders",
                      "shaders-hlsl",
                      "shaders-hlsl-no-opt",
                      "shaders-msl",
                      "shaders-msl-no-opt",
                      "shaders-no-opt",
                      "shaders-other",
                      "shaders-reflection",
                      "shaders-ue4",
                      "shaders-ue4-no-opt",
                      "test_shaders.py",
                      "test_shaders.sh",
                      "tests-other",
                      "update_test_shaders.sh",
                     
                      "spirv_cross_parsed_ir.hpp",
                      "spirv_reflect.hpp",
                      "spirv_cpp.hpp",
                      "spirv_parser.hpp",
                      "spirv_cross.hpp",
                      "spirv_cross_util.hpp",
                      "spirv_hlsl.hpp",
                      "spirv.hpp",
                      "spirv_msl.hpp",
                      "spirv_glsl.hpp",
                      "spirv_cross_error_handling.hpp",
                      "spirv_cross_containers.hpp",
                      "spirv_cfg.hpp",
                      "spirv_common.hpp"
                     ],
            sources: ["spirv_cfg.cpp",
                      "spirv_cpp.cpp",
                      "spirv_cross.cpp",
                      "spirv_cross_c.cpp",
                      "spirv_cross_parsed_ir.cpp",
                      "spirv_cross_util.cpp",
                      "spirv_glsl.cpp",
                      "spirv_hlsl.cpp",
                      "spirv_msl.cpp",
                      "spirv_parser.cpp",
                      "spirv_reflect.cpp"],
            publicHeadersPath: ".",
            cxxSettings: [
                .define("SPIRV_CROSS_C_API_CPP", to: "0"), // According to the docs, it is deprecated
                .define("SPIRV_CROSS_C_API_GLSL", to: "1"),
                .define("SPIRV_CROSS_C_API_HLSL", to: "1"),
                .define("SPIRV_CROSS_C_API_MSL", to: "1"),
                .define("SPIRV_CROSS_C_API_REFLECT", to: "1"), // JSON
            ]),
    ],
    cxxLanguageStandard: .cxx14
)
