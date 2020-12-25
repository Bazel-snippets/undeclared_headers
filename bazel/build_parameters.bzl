############################################################################
# This file contains placeholder values that will be appended to by TeamCity
############################################################################

# buildifier: disable=module-docstring
build_parameters = {
    "custom_toolchains": True,
    "artifactory": {
        "version": "0.0.0",
        "branch": "bazel_master",
        "platform": "platform",
        "flavor": "flavor",
        "revision": "0000000",
        "file_modified_time": 1608000000,  # Random meaningful value to be changed by TeamCity
    },

    # Possible values are "2015" and "2019".
    "msvc_version": "2015",
    "build_sanitizers": [
        #"ubsan",      # available on Linux only.
        #"asan",       # available on Linux and Mac.
        #"tsan",       # available on Linux and Mac.
        #"valgrind",   # available on Linux and Mac.
    ],
    "symbols": {
        # Parameters related to debug symbols publishing
        "symbols_publishing_enabled": False,
        # For production this should be \\symbols\symbols1
        "indexing_server_win": "\\\\0itvwfs03.tsi.lan\\90DayShare\\kerman\\symtest_win\\indices",  # The network location that you pass to symstore.exe to tell it where the log file is stored.
        "symbol_server_win": "\\\\0itvwfs03.tsi.lan\\90DayShare\\kerman\\symtest_win\\symbols",  # This is where we create a mapped network drive and upload the symbols to. We create a folder structure in this folder with the naming scheme {DllOrExeName\{MD5HashOfDllOrExe} and upload the symbol there. For our purposes, we will not store here but will use either the production store, or for testing you will use your own network share.
        "symbol_server_mac": "0itvwfs03.tsi.lan/90DayShare/kerman/symtest_mac/symbols",  # This is where we create a mapped network drive and upload the symbols to. We create a folder structure in this folder with the naming scheme {DllOrExeName\{MD5HashOfDllOrExe} and upload the symbol there. For our purposes, we will not store here but will use either the production store, or for testing you will use your own network share.
        "symbol_server_linux": "//0itvwfs03.tsi.lan/90DayShare/kerman/symtest_linux/symbols",  # This is where we create a mapped network drive and upload the symbols to. We create a folder structure in this folder with the naming scheme {DllOrExeName\{MD5HashOfDllOrExe} and upload the symbol there. For our purposes, we will not store here but will use either the production store, or for testing you will use your own network share.
        "publish_symbol_user": "svc_bazel",  # This is the user account we use to map the network drive and any logins necessary. This value needs to correspond to the user account stored in CyberArk and associated with the pem key. This needs to be a domain account.
        "cyberark_safe": "SERV_BAZEL",  # The name of the C3PGO CyberArk safe used to retrieve user/passwords from.
        "cyberark_host_id": "host/SERV_BAZEL_HOST",  # This is another value used to retrieve information from CyberArk.
        "cyberark_account_name": "Operating System-ServiceAccount-tsi.lan-svc_thirdparty",  # More CyberArk values used to retrieve passwords.
        "cyberark_safe_api_key": "bunch-of-hash-values",  # This is the C3PG’s API key, once you have a safe you ask for an API key and use it to indicate who you are for retrieving passwords. It is unique for each app calling the CyberArk APIs.
        "cyberark_pem_file": "bazel/symbols/cyberark-conjur-setup/certchain.pem",  # The relative path to the pem file containing the public key information.
    },
    # Replace with "#define TSTRING_UTF8" to run a UTF8 build.
    "tstring_utfx_define": "#define TSTRING_UTF16",
}
