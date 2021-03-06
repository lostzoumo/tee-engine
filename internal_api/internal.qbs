import qbs

DynamicLibrary {
    name: "InternalApi"
    Group {
        name: "project-install"
        fileTagsFilter: "dynamiclibrary"
        qbs.install: false
        qbs.installDir: "lib"
    }

    Depends { name: "cpp" }
    Depends { name: "OpenSSL" }

    Export {
        Depends { name: "cpp" }
        cpp.includePaths: ["../include", "."]
    }

    cpp.includePaths: [
        "../include",
    ]

    cpp.defines: ["OT_LOGGING", "_FORTIFY_SOURCE=2"]

    destinationDirectory: '.'

    files: [
        "../include/tee_internal_api.h",
        "../include/tee_shared_data_types.h",
        "../include/tee_logging.h",
        "callbacks.h",
        "callbacks.c",
        "openssl_1_0_2_beta_rsa_oaep.h",
        "openssl_1_0_2_beta_rsa_oaep.c",
        "opentee_internal_api.h",
        "opentee_internal_api.c",
        "opentee_storage_common.h",
        "opentee_storage_common.c",
        "tee_bigint.h",
        "tee_bigint.c",
        "tee_cancellation.h",
        "tee_cancellation.c",
        "tee_crypto_api.h",
        "tee_crypto_api.c",
        "tee_data_types.h",
        "tee_internal_client_api.h",
        "tee_internal_client_api.c",
        "tee_memory.h",
        "tee_memory.c",
        "tee_object_handle.h",
        "tee_panic.h",
        "tee_panic.c",
        "tee_storage_api.h",
        "tee_storage_api.c",
        "tee_storage_common.h",
        "tee_ta_interface.h",
        "tee_time_api.h",
        "tee_time_api.c",
    ]
}

