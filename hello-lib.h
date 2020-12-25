#ifdef _MSC_VER
    #define EXPORT __declspec(dllexport)
#else
    #define EXPORT extern
#endif

EXPORT unsigned int get_magic_number(void);
