# Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
# for details. All rights reserved. Use of this source code is governed by a
# BSD-style license that can be found in the LICENSE file.

# IMPORTANT:
# Before adding or updating dependencies, please review the documentation here:
# https://github.com/dart-lang/sdk/wiki/Adding-and-Updating-Dependencies
#
# Packages can be rolled to the latest version with `tools/manage_deps.dart`.
#
# For example
#
#     dart tools/manage_deps.dart bump third_party/pkg/dart_style

allowed_hosts = [
  'android.googlesource.com',
  'boringssl.googlesource.com',
  'chrome-infra-packages.appspot.com',
  'chromium.googlesource.com',
  'dart.googlesource.com',
  'dart-internal.googlesource.com',
  'fuchsia.googlesource.com',
  'llvm.googlesource.com',
]

vars = {
  # The dart_root is the root of our sdk checkout. This is normally
  # simply sdk, but if using special gclient specs it can be different.
  "dart_root": "sdk",

  # We use mirrors of all github repos to guarantee reproducibility and
  # consistency between what users see and what the bots see.
  # We need the mirrors to not have 100+ bots pulling github constantly.
  # We mirror our github repos on Dart's git servers.
  # DO NOT use this var if you don't see a mirror here:
  #   https://dart.googlesource.com/
  "dart_git": "https://dart.googlesource.com/",
  "dart_internal_git": "https://dart-internal.googlesource.com",
  # If the repo you want to use is at github.com/dart-lang, but not at
  # dart.googlesource.com, please file an issue
  # on github and add the label 'area-infrastructure'.
  # When the repo is mirrored, you can add it to this DEPS file.

  # Chromium git
  "android_git": "https://android.googlesource.com",
  "chromium_git": "https://chromium.googlesource.com",
  "fuchsia_git": "https://fuchsia.googlesource.com",
  "llvm_git": "https://llvm.googlesource.com",

  # Checked-in SDK version. The checked-in SDK is a Dart SDK distribution
  # in a cipd package used to run Dart scripts in the build and test
  # infrastructure, which is automatically built on the release commits.
  "sdk_tag": "version:3.3.0-279.1.beta",

  # co19 is a cipd package automatically generated for each co19 commit.
  # Use tests/co19/update.sh to update this hash.
  "co19_rev": "80711f456b9a9ccaf345892098aa75d978cf6dc3",

  # The internal benchmarks to use. See go/dart-benchmarks-internal
  "benchmarks_internal_rev": "3e58fcfa1464ffd7b1d3edc7a8d5d9a24a321c5d",
  "checkout_benchmarks_internal": False,

  # Checkout the flute benchmark only when benchmarking.
  "checkout_flute": False,

  # Checkout Android dependencies only on Mac and Linux.
  "download_android_deps":
    "host_os == mac or (host_os == linux and host_cpu == x64)",

  # Checkout extra javascript engines for testing or benchmarking. You can
  # self-service update these by following the go/dart-engprod/browsers.md
  # instructions. d8, the V8 shell, is always checked out.
  "checkout_javascript_engines": False,
  "d8_tag": "version:12.3.150",
  "jsshell_tag": "version:122.0",
  "jsc_tag": "version:274355",

  # https://chrome-infra-packages.appspot.com/p/fuchsia/third_party/clang
  "clang_version": "git_revision:c58bc24fcf678c55b0bf522be89eff070507a005",

  # https://chrome-infra-packages.appspot.com/p/gn/gn
  "gn_version": "git_revision:a2e2717ea670249a34b0de4b3e54f268d320bdfa",

  "reclient_version": "git_revision:f3883c2237b0eb9cc9524cb571b5ab8378f257e4",

  # Update from https://chrome-infra-packages.appspot.com/p/fuchsia/sdk/core
  "fuchsia_sdk_version": "version:18.20240208.2.1",
  "download_fuchsia_deps": False,

  # Ninja, runs the build based on files generated by GN.
  "ninja_tag": "version:2@1.11.1.chromium.7",

  # Scripts that make 'git cl format' work.
  "clang_format_scripts_rev": "bb994c6f067340c1135eb43eed84f4b33cfa7397",

  ### /third_party/ dependencies

  # Prefer to use hashes of binaryen that have been reviewed & rolled into g3.
  "binaryen_rev" : "9784f012848a7eb321c2037bdb363dfe0eab8bc9",
  "boringssl_gen_rev": "9c7294fd58261a79794f5afaa26598cf1442ad20",
  "boringssl_rev": "d24a38200fef19150eef00cad35b138936c08767",
  "browser-compat-data_tag": "ac8cae697014da1ff7124fba33b0b4245cc6cd1b", # v1.0.22
  "devtools_rev": "1f208c84965e9edddea11485fb73b170dba1cd96",
  "icu_rev": "81d656878ec611cb0b42d52c82e9dae93920d9ba",
  "jinja2_rev": "2222b31554f03e62600cd7e383376a7c187967a1",
  "libcxx_rev": "44079a4cc04cdeffb9cfe8067bfb3c276fb2bab0",
  "libcxxabi_rev": "2ce528fb5e0f92e57c97ec3ff53b75359d33af12",
  "libprotobuf_rev": "24487dd1045c7f3d64a21f38a3f0c06cc4cf2edb",
  "markupsafe_rev": "8f45f5cfa0009d2a70589bcda0349b8cb2b72783",
  "perfetto_rev": "13ce0c9e13b0940d2476cd0cff2301708a9a2e2b",
  "ply_rev": "604b32590ffad5cbb82e4afef1d305512d06ae93",
  "protobuf_gn_rev": "ca669f79945418f6229e4fef89b666b2a88cbb10",
  "WebCore_rev": "bcb10901266c884e7b3740abc597ab95373ab55c",
  "zlib_rev": "14dd4c4455602c9b71a1a89b5cafd1f4030d2e3f",

  ### /third_party/pkg dependencies
  # 'tools/rev_sdk_deps.dart' can rev pkg dependencies to their latest; put an
  # EOL comment after a dependency to disable this and pin it at its current
  # revision.

  "args_rev": "7dc7fe0430709229ccc87c3eaae729aeffe10c56",
  "async_rev": "24266cafbba7703b82c652d454baa5df09402f8f",
  "bazel_worker_rev": "372b8b514c7342465f58627a2418910f76120db9",
  "benchmark_harness_rev": "c8a0c8b1883dc16c7558a43cee1c3f4f9a163418",
  "boolean_selector_rev": "be88351e521648d381b96350bfe62c34abacee6d",
  "browser_launcher_rev": "74a0efe937a29d4d9aff50c145579c6e6479df1e",
  "characters_rev": "7633a16a22c626e19ca750223237396315268a06",
  "cli_util_rev": "ffeb5d2869b44b28d1b9035b540d164af44f3f1c",
  "clock_rev": "daf0fadabc5b3dc8e6e71bf3fb27ef9c3b79df5c",
  "collection_rev": "fc616ff8fd7b732c07b2b19e31b6601e59900ccf",
  "convert_rev": "d4d6368cffb8f4f25522875ef8e1d5f7d158bbad",
  "crypto_rev": "f059196bae4718187c9f421565f9cd1f8fb43898",
  "csslib_rev": "62ae85e84590f61169fddbca650e91a57544834b",
  # Note: Updates to dart_style have to be coordinated with the infrastructure
  # team so that the internal formatter `tools/sdks/dart-sdk/bin/dart format`
  # matches the version here. Please follow this process to make updates:
  #
  # * Create a commit that updates the version here to the desired version and
  #   adds any appropriate CHANGELOG text.
  # * Send that to eng-prod to review. They will update the checked-in SDK
  #   and land the review.
  #
  # For more details, see https://github.com/dart-lang/sdk/issues/30164.
  "dart_style_rev": "633b01cba68f4b42ddc2985c3d521c22149d5ce3", # disable rev_sdk_deps.dart
  "dartdoc_rev": "f152c0138bff8e4265a3459a6b08e4a83fe860b7",
  "ecosystem_rev": "3e4f2866d49c2448e44f51112956a689a2e50cd6",
  "file_rev": "3aa06490bf34bddf04c7ea964a50c177a4ca0de7",
  "fixnum_rev": "570b28adcfbfdd5b8a7230ea1d6ec0f9587493f1",
  "flute_rev": "a531c96a8b43d015c6bfbbfe3ab54867b0763b8b",
  "glob_rev": "ef5f0650f66dc64587b11757fe3303538cfeb1d8",
  "html_rev": "327e37a6a4dd46599737ee982f280d73a8f646f7",
  "http_rev": "f0a02f98f7c921e86ecc81c70f38bb6fbccc81b9", # https://github.com/dart-lang/sdk/issues/54165
  "http_multi_server_rev": "ba9d07f3596b24718ddf45c9e071d40879cca565",
  "http_parser_rev": "84db8b029d9b51859a0bb4966859af009f9442e3",
  "intl_rev": "5d65e3808ce40e6282e40881492607df4e35669f",
  "json_rpc_2_rev": "639857be892050159f5164c749d7947694976a4a",
  "leak_tracker_rev": "4a5b077739886f61bd6dc11c78865ef487c917c2",
  "lints_rev": "ead770872e272e25a64315c120950ea8ad5b2509",
  "logging_rev": "cbaf4ee2e59c318d7519edb5381f5fe2a7f69587",
  "markdown_rev": "c2b842937787bc0dce1763d56e7551b9045deb42",
  "matcher_rev": "d954c8d979579b4b46427b0ea1d9c721117c191e",
  "material_color_utilities_rev": "799b6ba2f3f1c28c67cc7e0b4f18e0c7d7f3c03e",
  "mime_rev": "9a168712d6db610c3822617c132daea72d4fd2b5",
  "mockito_rev": "7d6632fd679f0f6aae32ee74038ba8cb6b64a607",
  "native_rev": "0901a3323022fdb59657cc2cb00ea5c80a8468a6", # mosum@ and dacoharkes@ are rolling breaking changes manually while the assets features are in experimental.
  "package_config_rev": "4a7042bb286cf0b41b26e87972bc28bda535f8b9",
  "path_rev": "a7b696071bd83d3ee0a0f1b57ac94d6b1f05cac4",
  "pool_rev": "782da82fedca4e5776e43ba321543ed2b20373b2",
  "protobuf_rev": "a293fb9c866b1def3d3e7fffc5f6763a2ec59cc9",
  "pub_rev": "4ab2e3663f0a98be40427e004e789caebf3ea72e", # disable rev_sdk_deps.dart
  "pub_semver_rev": "3175ba0a58a96fb23f8d68b5f5c44d1a5b30cc16",
  "shelf_rev": "b432620f109b92c0399261722aa28c4d8d9a385c",
  "source_map_stack_trace_rev": "c75649651d01826236e3ab7093d277a70756905a",
  "source_maps_rev": "55e92a4b0a8560d5b2b3bb7255249afdb8186ea6",
  "source_span_rev": "21a403a75b6887fbd811fb53b74b08c2cef67ab6",
  "sse_rev": "af7d8d0881d3309fe9ffc3f0778b33ae745fddd1",
  "stack_trace_rev": "155f12c51226d6372f6722f5e55c38ef39625006",
  "stream_channel_rev": "851336fada8759aa3a2e9ce344844d48dee67495",
  "string_scanner_rev": "a2bcdb575f6bb30b944b4f632ea95d8dc4f914bd",
  "sync_http_rev": "b849559fedc7c5d19a68950f255b6edde6eec6ef",
  "tar_rev": "0fc831c6e93be5342d4863d9e464428e73007cce",
  "term_glyph_rev": "85a4aa6bf25cd6ecaa5c56a1b259b2d95264a439",
  "test_rev": "a3f05ec8b16df6815a10d02ad4bc07e22dfda74d",
  "test_descriptor_rev": "35f97afacb2b7fe627f6ed0bede722fd48980848",
  "test_process_rev": "7fe39afbb6c444f256c1ec0eef008edebcd44644",
  "test_reflective_loader_rev": "9862703a3d14848376c8efde271c88022fba91eb",
  "tools_rev": "2ef7673ca4c8eb346debe6d628f0196788fc3c66",
  "typed_data_rev": "375efaa02a13dad0785cfbd9bdcb9f09aa8ef529",
  "usage_rev": "67ecd7d1328347ec15cbf8d8a46918df75a66af8",
  "vector_math_rev": "cb976c731f5f9011f09311cd1c39d5778d4f8f2e",
  "watcher_rev": "21858a41da1482922e03ee65cdf2169d01d59a67",
  "web_rev": "a54a1f0447979f9a3ea220199eca849ffb214e91",
  "web_socket_channel_rev": "5241175e7c66271850d6e75fb9ec90068f9dd3c4", # https://github.com/dart-lang/sdk/issues/54165
  "webdev_rev": "629c63214466a77d0994e9b8003120f48af9ef1d",
  "webdriver_rev": "2c1b6f8b9d684caf62d72bb327c24f738a4e7455",
  "webkit_inspection_protocol_rev": "07295b9a5a1f1851666269128e95a9644d65107a",
  "yaml_rev": "e5984433a2803d5c67ed0abac5891a55040381ee",
  "yaml_edit_rev": "2a9a11bee120d507d61d501c34585440be8c12b6",

  # Windows deps
  "crashpad_rev": "bf327d8ceb6a669607b0dbab5a83a275d03f99ed",
  "minichromium_rev": "8d641e30a8b12088649606b912c2bc4947419ccc",
  "googletest_rev": "f854f1d27488996dc8a6db3c9453f80b02585e12",

  # Pinned browser versions used by the testing infrastructure. These are not
  # meant to be downloaded by users for local testing. You can self-service
  # update these by following the go/dart-engprod/browsers.md instructions.
  "download_chrome": False,
  "chrome_tag": "121.0.6167.85",
  "download_firefox": False,
  "firefox_tag": "122.0.1",

  # Emscripten is used in dart2wasm tests.
  "download_emscripten": False,
  "emsdk_rev": "e41b8c68a248da5f18ebd03bd0420953945d52ff",
  "emsdk_ver": "3.1.3",
}

gclient_gn_args_file = Var("dart_root") + '/build/config/gclient_args.gni'
gclient_gn_args = [
]

deps = {
  # Stuff needed for GN build.
  Var("dart_root") + "/buildtools/clang_format/script":
    Var("chromium_git") + "/chromium/llvm-project/cfe/tools/clang-format.git" +
    "@" + Var("clang_format_scripts_rev"),

  Var("dart_root") + "/benchmarks-internal": {
    "url": Var("dart_internal_git") + "/benchmarks-internal.git" +
           "@" + Var("benchmarks_internal_rev"),
    "condition": "checkout_benchmarks_internal",
  },
  Var("dart_root") + "/tools/sdks/dart-sdk": {
      "packages": [{
          "package": "dart/dart-sdk/${{platform}}",
          "version": Var("sdk_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/d8/linux/x64": {
      "packages": [{
          "package": "dart/third_party/d8/linux-amd64",
          "version": Var("d8_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/d8/linux/arm64": {
      "packages": [{
          "package": "dart/third_party/d8/linux-arm64",
          "version": Var("d8_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/d8/macos/x64": {
      "packages": [{
          "package": "dart/third_party/d8/mac-amd64",
          "version": Var("d8_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/d8/macos/arm64": {
      "packages": [{
          "package": "dart/third_party/d8/mac-arm64",
          "version": Var("d8_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/d8/windows/x64": {
      "packages": [{
          "package": "dart/third_party/d8/windows-amd64",
          "version": Var("d8_tag"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/firefox_jsshell": {
      "packages": [{
          "package": "dart/third_party/jsshell/${{platform}}",
          "version": Var("jsshell_tag"),
      }],
      "condition": "checkout_javascript_engines",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/jsc": {
      "packages": [{
          "package": "dart/third_party/jsc/${{platform}}",
          "version": Var("jsc_tag"),
      }],
      "condition": "checkout_javascript_engines and host_os == 'linux' and host_cpu == 'x64'",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/devtools": {
      "packages": [{
          "package": "dart/third_party/flutter/devtools",
          "version": "git_revision:" + Var("devtools_rev"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/tests/co19/src": {
      "packages": [{
          "package": "dart/third_party/co19",
          "version": "git_revision:" + Var("co19_rev"),
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/markupsafe":
      Var("chromium_git") + "/chromium/src/third_party/markupsafe.git" +
      "@" + Var("markupsafe_rev"),
  Var("dart_root") + "/third_party/babel": {
      "packages": [{
          "package": "dart/third_party/babel",
          "version": "version:7.4.5",
      }],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/zlib":
      Var("chromium_git") + "/chromium/src/third_party/zlib.git" +
      "@" + Var("zlib_rev"),

  Var("dart_root") + "/third_party/libcxx":
      Var("llvm_git") + "/llvm-project/libcxx" + "@" + Var("libcxx_rev"),

  Var("dart_root") + "/third_party/libcxxabi":
      Var("llvm_git") + "/llvm-project/libcxxabi" + "@" + Var("libcxxabi_rev"),

  Var("dart_root") + "/third_party/boringssl":
      Var("dart_git") + "boringssl_gen.git" + "@" + Var("boringssl_gen_rev"),
  Var("dart_root") + "/third_party/boringssl/src":
      "https://boringssl.googlesource.com/boringssl.git" +
      "@" + Var("boringssl_rev"),

  Var("dart_root") + "/third_party/binaryen/src" :
      Var("chromium_git") + "/external/github.com/WebAssembly/binaryen.git" +
      "@" + Var("binaryen_rev"),

  Var("dart_root") + "/third_party/gsutil": {
      "packages": [{
          "package": "infra/3pp/tools/gsutil",
          "version": "version:2@5.5",
      }],
      "dep_type": "cipd",
  },

  Var("dart_root") + "/third_party/emsdk":
      Var("dart_git") + "external/github.com/emscripten-core/emsdk.git" +
      "@" + Var("emsdk_rev"),

  Var("dart_root") + "/third_party/jinja2":
      Var("chromium_git") + "/chromium/src/third_party/jinja2.git" +
      "@" + Var("jinja2_rev"),

  Var("dart_root") + "/third_party/perfetto":
      Var("android_git") + "/platform/external/perfetto" +
      "@" + Var("perfetto_rev"),

  Var("dart_root") + "/third_party/ply":
      Var("chromium_git") + "/chromium/src/third_party/ply.git" +
      "@" + Var("ply_rev"),

  Var("dart_root") + "/build/secondary/third_party/protobuf":
      Var("fuchsia_git") + "/protobuf-gn" +
      "@" + Var("protobuf_gn_rev"),

  Var("dart_root") + "/third_party/protobuf":
      Var("fuchsia_git") + "/third_party/protobuf" +
      "@" + Var("libprotobuf_rev"),

  Var("dart_root") + "/third_party/icu":
      Var("chromium_git") + "/chromium/deps/icu.git" +
      "@" + Var("icu_rev"),

  Var("dart_root") + "/third_party/WebCore":
      Var("dart_git") + "webcore.git" + "@" + Var("WebCore_rev"),

  Var("dart_root") + "/third_party/mdn/browser-compat-data/src":
      Var('chromium_git') + '/external/github.com/mdn/browser-compat-data' +
      "@" + Var("browser-compat-data_tag"),

  Var("dart_root") + "/third_party/pkg/args":
      Var("dart_git") + "args.git" + "@" + Var("args_rev"),
  Var("dart_root") + "/third_party/pkg/async":
      Var("dart_git") + "async.git" + "@" + Var("async_rev"),
  Var("dart_root") + "/third_party/pkg/bazel_worker":
      Var("dart_git") + "bazel_worker.git" + "@" + Var("bazel_worker_rev"),
  Var("dart_root") + "/third_party/pkg/benchmark_harness":
      Var("dart_git") + "benchmark_harness.git" + "@" +
      Var("benchmark_harness_rev"),
  Var("dart_root") + "/third_party/pkg/boolean_selector":
      Var("dart_git") + "boolean_selector.git" +
      "@" + Var("boolean_selector_rev"),
  Var("dart_root") + "/third_party/pkg/browser_launcher":
      Var("dart_git") + "browser_launcher.git" + "@" + Var("browser_launcher_rev"),
  Var("dart_root") + "/third_party/pkg/characters": {
    # Contact athom@ or ensure that license requirements are met before using
    # this dependency in other parts of the Dart SDK.
    "url": Var("dart_git") + "characters.git" + "@" + Var("characters_rev"),
    "condition": "checkout_flute",
  },
  Var("dart_root") + "/third_party/pkg/cli_util":
      Var("dart_git") + "cli_util.git" + "@" + Var("cli_util_rev"),
  Var("dart_root") + "/third_party/pkg/clock":
      Var("dart_git") + "clock.git" + "@" + Var("clock_rev"),
  Var("dart_root") + "/third_party/pkg/collection":
      Var("dart_git") + "collection.git" + "@" + Var("collection_rev"),
  Var("dart_root") + "/third_party/pkg/convert":
      Var("dart_git") + "convert.git" + "@" + Var("convert_rev"),
  Var("dart_root") + "/third_party/pkg/crypto":
      Var("dart_git") + "crypto.git" + "@" + Var("crypto_rev"),
  Var("dart_root") + "/third_party/pkg/csslib":
      Var("dart_git") + "csslib.git" + "@" + Var("csslib_rev"),
  Var("dart_root") + "/third_party/pkg/dart_style":
      Var("dart_git") + "dart_style.git" + "@" + Var("dart_style_rev"),
  Var("dart_root") + "/third_party/pkg/dartdoc":
      Var("dart_git") + "dartdoc.git" + "@" + Var("dartdoc_rev"),
  Var("dart_root") + "/third_party/pkg/ecosystem":
      Var("dart_git") + "ecosystem.git" + "@" + Var("ecosystem_rev"),
  Var("dart_root") + "/third_party/pkg/fixnum":
      Var("dart_git") + "fixnum.git" + "@" + Var("fixnum_rev"),
  Var("dart_root") + "/third_party/flute": {
    "url": Var("dart_git") + "flute.git" + "@" + Var("flute_rev"),
    "condition": "checkout_flute",
  },
  Var("dart_root") + "/third_party/pkg/file":
      Var("dart_git") + "external/github.com/google/file.dart"
      + "@" + Var("file_rev"),
  Var("dart_root") + "/third_party/pkg/glob":
      Var("dart_git") + "glob.git" + "@" + Var("glob_rev"),
  Var("dart_root") + "/third_party/pkg/html":
      Var("dart_git") + "html.git" + "@" + Var("html_rev"),
  Var("dart_root") + "/third_party/pkg/http":
      Var("dart_git") + "http.git" + "@" + Var("http_rev"),
  Var("dart_root") + "/third_party/pkg/http_multi_server":
      Var("dart_git") + "http_multi_server.git" +
      "@" + Var("http_multi_server_rev"),
  Var("dart_root") + "/third_party/pkg/http_parser":
      Var("dart_git") + "http_parser.git" + "@" + Var("http_parser_rev"),
  Var("dart_root") + "/third_party/pkg/intl":
      Var("dart_git") + "intl.git" + "@" + Var("intl_rev"),
  Var("dart_root") + "/third_party/pkg/json_rpc_2":
      Var("dart_git") + "json_rpc_2.git" + "@" + Var("json_rpc_2_rev"),
  Var("dart_root") + "/third_party/pkg/leak_tracker":
      Var("dart_git") + "leak_tracker.git" + "@" + Var("leak_tracker_rev"),
  Var("dart_root") + "/third_party/pkg/lints":
      Var("dart_git") + "lints.git" + "@" + Var("lints_rev"),
  Var("dart_root") + "/third_party/pkg/logging":
      Var("dart_git") + "logging.git" + "@" + Var("logging_rev"),
  Var("dart_root") + "/third_party/pkg/markdown":
      Var("dart_git") + "markdown.git" + "@" + Var("markdown_rev"),
  Var("dart_root") + "/third_party/pkg/matcher":
      Var("dart_git") + "matcher.git" + "@" + Var("matcher_rev"),
  Var("dart_root") + "/third_party/pkg/material_color_utilities": {
    "url": Var("dart_git") +
           "external/github.com/material-foundation/material-color-utilities.git" +
           "@" + Var("material_color_utilities_rev"),
    "condition": "checkout_flute",
  },
  Var("dart_root") + "/third_party/pkg/mime":
      Var("dart_git") + "mime.git" + "@" + Var("mime_rev"),
  Var("dart_root") + "/third_party/pkg/mockito":
      Var("dart_git") + "mockito.git" + "@" + Var("mockito_rev"),
  Var("dart_root") + "/third_party/pkg/native":
      Var("dart_git") + "native.git" + "@" + Var("native_rev"),
  Var("dart_root") + "/third_party/pkg/package_config":
      Var("dart_git") + "package_config.git" +
      "@" + Var("package_config_rev"),
  Var("dart_root") + "/third_party/pkg/path":
      Var("dart_git") + "path.git" + "@" + Var("path_rev"),
  Var("dart_root") + "/third_party/pkg/pool":
      Var("dart_git") + "pool.git" + "@" + Var("pool_rev"),
  Var("dart_root") + "/third_party/pkg/protobuf":
       Var("dart_git") + "protobuf.git" + "@" + Var("protobuf_rev"),
  Var("dart_root") + "/third_party/pkg/pub_semver":
      Var("dart_git") + "pub_semver.git" + "@" + Var("pub_semver_rev"),
  Var("dart_root") + "/third_party/pkg/pub":
      Var("dart_git") + "pub.git" + "@" + Var("pub_rev"),
  Var("dart_root") + "/third_party/pkg/shelf":
      Var("dart_git") + "shelf.git" + "@" + Var("shelf_rev"),
  Var("dart_root") + "/third_party/pkg/source_maps":
      Var("dart_git") + "source_maps.git" + "@" + Var("source_maps_rev"),
  Var("dart_root") + "/third_party/pkg/source_span":
      Var("dart_git") + "source_span.git" + "@" + Var("source_span_rev"),
  Var("dart_root") + "/third_party/pkg/source_map_stack_trace":
      Var("dart_git") + "source_map_stack_trace.git" +
      "@" + Var("source_map_stack_trace_rev"),
  Var("dart_root") + "/third_party/pkg/sse":
      Var("dart_git") + "sse.git" + "@" + Var("sse_rev"),
  Var("dart_root") + "/third_party/pkg/stack_trace":
      Var("dart_git") + "stack_trace.git" + "@" + Var("stack_trace_rev"),
  Var("dart_root") + "/third_party/pkg/stream_channel":
      Var("dart_git") + "stream_channel.git" +
      "@" + Var("stream_channel_rev"),
  Var("dart_root") + "/third_party/pkg/string_scanner":
      Var("dart_git") + "string_scanner.git" +
      "@" + Var("string_scanner_rev"),
  Var("dart_root") + "/third_party/pkg/sync_http":
      Var("dart_git") + "sync_http.git" + "@" + Var("sync_http_rev"),
Var("dart_root") + "/third_party/pkg/tar":
      Var("dart_git") + "external/github.com/simolus3/tar.git" +
      "@" + Var("tar_rev"),
  Var("dart_root") + "/third_party/pkg/term_glyph":
      Var("dart_git") + "term_glyph.git" + "@" + Var("term_glyph_rev"),
  Var("dart_root") + "/third_party/pkg/test":
      Var("dart_git") + "test.git" + "@" + Var("test_rev"),
  Var("dart_root") + "/third_party/pkg/test_descriptor":
      Var("dart_git") + "test_descriptor.git" + "@" + Var("test_descriptor_rev"),
  Var("dart_root") + "/third_party/pkg/test_process":
      Var("dart_git") + "test_process.git" + "@" + Var("test_process_rev"),
  Var("dart_root") + "/third_party/pkg/test_reflective_loader":
      Var("dart_git") + "test_reflective_loader.git" +
      "@" + Var("test_reflective_loader_rev"),
  Var("dart_root") + "/third_party/pkg/tools":
      Var("dart_git") + "tools.git" + "@" + Var("tools_rev"),
  Var("dart_root") + "/third_party/pkg/typed_data":
      Var("dart_git") + "typed_data.git" + "@" + Var("typed_data_rev"),
  Var("dart_root") + "/third_party/pkg/usage":
      Var("dart_git") + "usage.git" + "@" + Var("usage_rev"),
  Var("dart_root") + "/third_party/pkg/vector_math":
      Var("dart_git") + "external/github.com/google/vector_math.dart.git" +
      "@" + Var("vector_math_rev"),
  Var("dart_root") + "/third_party/pkg/watcher":
      Var("dart_git") + "watcher.git" + "@" + Var("watcher_rev"),
  Var("dart_root") + "/third_party/pkg/webdev":
      Var("dart_git") + "webdev.git" + "@" + Var("webdev_rev"),
  Var("dart_root") + "/third_party/pkg/webdriver":
      Var("dart_git") + "external/github.com/google/webdriver.dart.git" +
      "@" + Var("webdriver_rev"),
  Var("dart_root") + "/third_party/pkg/webkit_inspection_protocol":
      Var("dart_git") + "external/github.com/google/webkit_inspection_protocol.dart.git" +
      "@" + Var("webkit_inspection_protocol_rev"),
  Var("dart_root") + "/third_party/pkg/web":
      Var("dart_git") + "web.git" + "@" + Var("web_rev"),
  Var("dart_root") + "/third_party/pkg/web_socket_channel":
      Var("dart_git") + "web_socket_channel.git" +
      "@" + Var("web_socket_channel_rev"),
  Var("dart_root") + "/third_party/pkg/yaml_edit":
      Var("dart_git") + "yaml_edit.git" + "@" + Var("yaml_edit_rev"),
  Var("dart_root") + "/third_party/pkg/yaml":
      Var("dart_git") + "yaml.git" + "@" + Var("yaml_rev"),

  Var("dart_root") + "/buildtools/sysroot/linux": {
      "packages": [
          {
              "package": "fuchsia/third_party/sysroot/linux",
              "version": "git_revision:fa7a5a9710540f30ff98ae48b62f2cdf72ed2acd",
          },
      ],
      "condition": "host_os == linux",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/sysroot/focal": {
      "packages": [
          {
              "package": "fuchsia/third_party/sysroot/focal",
              "version": "git_revision:fa7a5a9710540f30ff98ae48b62f2cdf72ed2acd",
          },
      ],
      "condition": "host_os == linux",
      "dep_type": "cipd",
  },

  # Keep consistent with pkg/test_runner/lib/src/options.dart.
  Var("dart_root") + "/buildtools/linux-x64/clang": {
      "packages": [
          {
              "package": "fuchsia/third_party/clang/linux-amd64",
              "version": Var("clang_version"),
          },
      ],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/mac-x64/clang": {
      "packages": [
          {
              "package": "fuchsia/third_party/clang/mac-amd64",
              "version": Var("clang_version"),
          },
      ],
      "condition": "host_os == mac", # On ARM64 Macs too because Goma doesn't support the host-arm64 toolchain.
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/win-x64/clang": {
      "packages": [
          {
              "package": "fuchsia/third_party/clang/windows-amd64",
              "version": Var("clang_version"),
          },
      ],
      "condition": "host_os == win", # On ARM64 Windows too because Fuchsia doesn't provide the host-arm64 toolchain.
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/linux-arm64/clang": {
      "packages": [
          {
              "package": "fuchsia/third_party/clang/linux-arm64",
              "version": Var("clang_version"),
          },
      ],
      "condition": "host_os == 'linux' and host_cpu == 'arm64'",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/mac-arm64/clang": {
      "packages": [
          {
              "package": "fuchsia/third_party/clang/mac-arm64",
              "version": Var("clang_version"),
          },
      ],
      "condition": "host_os == 'mac' and host_cpu == 'arm64'",
      "dep_type": "cipd",
  },

  Var("dart_root") + '/buildtools/reclient': {
    'packages': [
      {
        'package': 'infra/rbe/client/${{platform}}',
        'version': Var('reclient_version'),
      }
    ],
    # Download reclient only on the platforms where it has packages available.
    'condition': '((host_os == "linux" or host_os == "mac" ) and host_cpu == "x64") or (host_os == "mac" and host_cpu == "arm64")',
    'dep_type': 'cipd',
  },

  Var("dart_root") + "/third_party/webdriver/chrome": {
    "packages": [
      {
        "package": "dart/third_party/chromedriver/${{platform}}",
        "version": "version:" + Var("chrome_tag"),
      }
    ],
    "condition": "download_chrome",
    "dep_type": "cipd",
  },

  Var("dart_root") + "/buildtools": {
      "packages": [
          {
              "package": "gn/gn/${{platform}}",
              "version": Var("gn_version"),
          },
      ],
      "condition": "host_os != 'win'",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/buildtools/win": {
      "packages": [
          {
              "package": "gn/gn/windows-amd64",
              "version": Var("gn_version"),
          },
      ],
      "condition": "host_os == 'win'",
      "dep_type": "cipd",
  },

  Var("dart_root") + "/buildtools/ninja": {
      "packages": [{
          "package": "infra/3pp/tools/ninja/${{platform}}",
          "version": Var("ninja_tag"),
      }],
      "dep_type": "cipd",
  },

  Var("dart_root") + "/third_party/android_tools/ndk": {
      "packages": [
          {
            "package": "flutter/android/ndk/${{os}}-amd64",
            "version": "version:r27.0.10869015"
          }
      ],
      "condition": "download_android_deps",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/android_tools/sdk/platform-tools": {
      "packages": [
          {
            "package": "flutter/android/sdk/platform-tools/linux-amd64",
            "version": "1tZc4sOxZS6FQIvT5i0wwdycmM8AO7QZY32FC9_HfR4C"
          }
      ],
      "condition": "download_android_deps",
      "dep_type": "cipd",
  },

  Var("dart_root") + "/third_party/fuchsia/sdk/linux": {
    "packages": [
      {
      "package": "fuchsia/sdk/core/${{platform}}",
      "version": Var("fuchsia_sdk_version"),
      }
    ],
    "condition": 'download_fuchsia_deps and host_os == "linux"',
    "dep_type": "cipd",
  },

  Var("dart_root") + "/third_party/fuchsia/test_scripts": {
    "packages": [
      {
      "package": "chromium/fuchsia/test-scripts",
      "version": "version:2@49064713a73ae92d8c28164938b97869afd336aa",
      }
    ],
    "condition": 'download_fuchsia_deps',
    "dep_type": "cipd",
  },

  Var("dart_root") + "/third_party/fuchsia/gn-sdk": {
    "packages": [
      {
      "package": "chromium/fuchsia/gn-sdk",
      "version": "version:2@7f1f23fce153ca079a77492d9d47d803d60b774e",
      }
    ],
    "condition": 'download_fuchsia_deps',
    "dep_type": "cipd",
  },

  Var("dart_root") + "/pkg/front_end/test/fasta/types/benchmark_data": {
    "packages": [
      {
        "package": "dart/cfe/benchmark_data",
        "version": "sha1sum:5b6e6dfa33b85c733cab4e042bf46378984d1544",
      }
    ],
    "dep_type": "cipd",
  },

  # TODO(37531): Remove these cipd packages and build with sdk instead when
  # benchmark runner gets support for that.
  Var("dart_root") + "/benchmarks/FfiBoringssl/native/out/": {
      "packages": [
          {
              "package": "dart/benchmarks/ffiboringssl",
              "version": "commit:a86c69888b9a416f5249aacb4690a765be064969",
          },
      ],
      "dep_type": "cipd",
  },
  Var("dart_root") + "/benchmarks/FfiCall/native/out/": {
      "packages": [
          {
              "package": "dart/benchmarks/fficall",
              "version": "ebF5aRXKDananlaN4Y8b0bbCNHT1MnkGbWqfpCpiND4C",
          },
      ],
          "dep_type": "cipd",
  },
  Var("dart_root") + "/benchmarks/NativeCall/native/out/": {
      "packages": [
          {
              "package": "dart/benchmarks/nativecall",
              "version": "w1JKzCIHSfDNIjqnioMUPq0moCXKwX67aUfhyrvw4E0C",
          },
      ],
          "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/browsers/chrome": {
      "packages": [
          {
              "package": "dart/browsers/chrome/${{platform}}",
              "version": "version:" + Var("chrome_tag"),
          },
      ],
      "condition": "download_chrome",
      "dep_type": "cipd",
  },
  Var("dart_root") + "/third_party/browsers/firefox": {
      "packages": [
          {
              "package": "dart/browsers/firefox/${{platform}}",
              "version": "version:" + Var("firefox_tag"),
          },
      ],
      "condition": "download_firefox",
      "dep_type": "cipd",
  },
}

deps_os = {
  "win": {
    Var("dart_root") + "/third_party/cygwin":
        Var("chromium_git") + "/chromium/deps/cygwin.git" + "@" +
        "c89e446b273697fadf3a10ff1007a97c0b7de6df",
    Var("dart_root") + "/third_party/crashpad/crashpad":
        Var("chromium_git") + "/crashpad/crashpad.git" + "@" +
        Var("crashpad_rev"),
    Var("dart_root") + "/third_party/mini_chromium/mini_chromium":
        Var("chromium_git") + "/chromium/mini_chromium" + "@" +
        Var("minichromium_rev"),
    Var("dart_root") + "/third_party/googletest":
        Var("fuchsia_git") + "/third_party/googletest" + "@" +
        Var("googletest_rev"),
  }
}

hooks = [
  {
    # Generate the .dart_tool/package_confg.json file.
    'name': 'Generate .dart_tool/package_confg.json',
    'pattern': '.',
    'action': ['python3', 'sdk/tools/generate_package_config.py'],
  },
  {
    # Generate the sdk/version file.
    'name': 'Generate sdk/version',
    'pattern': '.',
    'action': ['python3', 'sdk/tools/generate_sdk_version_file.py'],
  },
  {
    'name': 'buildtools',
    'pattern': '.',
    'action': ['python3', 'sdk/tools/buildtools/update.py'],
  },
  {
    # Update the Windows toolchain if necessary.
    'name': 'win_toolchain',
    'pattern': '.',
    'action': ['python3', 'sdk/build/vs_toolchain.py', 'update'],
    'condition': 'checkout_win'
  },
  # Install and activate the empscripten SDK.
  {
    'name': 'install_emscripten',
    'pattern': '.',
    'action': ['python3', 'sdk/third_party/emsdk/emsdk.py', 'install',
        Var('emsdk_ver')],
    'condition': 'download_emscripten'
  },
  {
    'name': 'activate_emscripten',
    'pattern': '.',
    'action': ['python3', 'sdk/third_party/emsdk/emsdk.py', 'activate',
        Var('emsdk_ver')],
    'condition': 'download_emscripten'
  },
  {
    'name': 'Download Fuchsia system images',
    'pattern': '.',
    'action': [
      'python3',
      'sdk/build/fuchsia/with_envs.py',
      'sdk/third_party/fuchsia/test_scripts/update_product_bundles.py',
      'terminal.x64',
    ],
    'condition': 'download_fuchsia_deps'
  },
]
