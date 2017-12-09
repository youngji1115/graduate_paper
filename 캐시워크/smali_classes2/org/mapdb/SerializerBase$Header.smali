.class public interface abstract Lorg/mapdb/SerializerBase$Header;
.super Ljava/lang/Object;
.source "SerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Header"
.end annotation


# static fields
.field public static final ARRAYLIST:I = 0xa3

.field public static final ARRAYLIST_PACKED_LONG:I = 0xa0

.field public static final ARRAY_BOOLEAN:I = 0x6f

.field public static final ARRAY_BYTE:I = 0x6d

.field public static final ARRAY_BYTE_ALL_EQUAL:I = 0x6e

.field public static final ARRAY_CHAR:I = 0x71

.field public static final ARRAY_DOUBLE:I = 0x73

.field public static final ARRAY_FLOAT:I = 0x72

.field public static final ARRAY_INT:I = 0x77

.field public static final ARRAY_INT_BYTE:I = 0x74

.field public static final ARRAY_INT_PACKED:I = 0x76

.field public static final ARRAY_INT_SHORT:I = 0x75

.field public static final ARRAY_LONG:I = 0x7c

.field public static final ARRAY_LONG_BYTE:I = 0x78

.field public static final ARRAY_LONG_INT:I = 0x7b

.field public static final ARRAY_LONG_PACKED:I = 0x7a

.field public static final ARRAY_LONG_SHORT:I = 0x79

.field public static final ARRAY_OBJECT:I = 0x9e

.field public static final ARRAY_OBJECT_ALL_NULL:I = 0xa1

.field public static final ARRAY_OBJECT_NO_REFS:I = 0xa2

.field public static final ARRAY_OBJECT_PACKED_LONG:I = 0x9f

.field public static final ARRAY_SHORT:I = 0x70

.field public static final BIGDECIMAL:I = 0x89

.field public static final BIGINTEGER:I = 0x8a

.field public static final BOOLEAN_FALSE:I = 0x3

.field public static final BOOLEAN_TRUE:I = 0x2

.field public static final BYTE:I = 0x55

.field public static final BYTE_0:I = 0x53

.field public static final BYTE_1:I = 0x54

.field public static final BYTE_M1:I = 0x52

.field public static final CHAR:I = 0x59

.field public static final CHAR_0:I = 0x56

.field public static final CHAR_1:I = 0x57

.field public static final CHAR_255:I = 0x58

.field public static final CLASS:I = 0x8b

.field public static final DATE:I = 0x8c

.field public static final DOUBLE:I = 0x6c

.field public static final DOUBLE_0:I = 0x67

.field public static final DOUBLE_1:I = 0x68

.field public static final DOUBLE_255:I = 0x69

.field public static final DOUBLE_INT:I = 0x6b

.field public static final DOUBLE_M1:I = 0x66

.field public static final DOUBLE_SHORT:I = 0x6a

.field public static final FLOAT:I = 0x65

.field public static final FLOAT_0:I = 0x61

.field public static final FLOAT_1:I = 0x62

.field public static final FLOAT_255:I = 0x63

.field public static final FLOAT_M1:I = 0x60

.field public static final FLOAT_SHORT:I = 0x64

.field public static final FUN_HI:I = 0x8d

.field public static final HASHMAP:I = 0xa5

.field public static final HASHSET:I = 0xa8

.field public static final INT:I = 0x26

.field public static final INT_0:I = 0xd

.field public static final INT_1:I = 0xe

.field public static final INT_10:I = 0x17

.field public static final INT_11:I = 0x18

.field public static final INT_12:I = 0x19

.field public static final INT_13:I = 0x1a

.field public static final INT_14:I = 0x1b

.field public static final INT_15:I = 0x1c

.field public static final INT_16:I = 0x1d

.field public static final INT_2:I = 0xf

.field public static final INT_3:I = 0x10

.field public static final INT_4:I = 0x11

.field public static final INT_5:I = 0x12

.field public static final INT_6:I = 0x13

.field public static final INT_7:I = 0x14

.field public static final INT_8:I = 0x15

.field public static final INT_9:I = 0x16

.field public static final INT_F1:I = 0x21

.field public static final INT_F2:I = 0x23

.field public static final INT_F3:I = 0x25

.field public static final INT_M1:I = 0xc

.field public static final INT_M2:I = 0xb

.field public static final INT_M3:I = 0xa

.field public static final INT_M4:I = 0x9

.field public static final INT_M5:I = 0x8

.field public static final INT_M6:I = 0x7

.field public static final INT_M7:I = 0x6

.field public static final INT_M8:I = 0x5

.field public static final INT_M9:I = 0x4

.field public static final INT_MAX_VALUE:I = 0x1f

.field public static final INT_MF1:I = 0x20

.field public static final INT_MF2:I = 0x22

.field public static final INT_MF3:I = 0x24

.field public static final INT_MIN_VALUE:I = 0x1e

.field public static final JAVA_SERIALIZATION:I = 0xac

.field public static final LINKEDHASHMAP:I = 0xa6

.field public static final LINKEDHASHSET:I = 0xa9

.field public static final LINKEDLIST:I = 0xaa

.field public static final LONG:I = 0x51

.field public static final LONG_0:I = 0x30

.field public static final LONG_1:I = 0x31

.field public static final LONG_10:I = 0x3a

.field public static final LONG_11:I = 0x3b

.field public static final LONG_12:I = 0x3c

.field public static final LONG_13:I = 0x3d

.field public static final LONG_14:I = 0x3e

.field public static final LONG_15:I = 0x3f

.field public static final LONG_16:I = 0x40

.field public static final LONG_2:I = 0x32

.field public static final LONG_3:I = 0x33

.field public static final LONG_4:I = 0x34

.field public static final LONG_5:I = 0x35

.field public static final LONG_6:I = 0x36

.field public static final LONG_7:I = 0x37

.field public static final LONG_8:I = 0x38

.field public static final LONG_9:I = 0x39

.field public static final LONG_F1:I = 0x44

.field public static final LONG_F2:I = 0x46

.field public static final LONG_F3:I = 0x48

.field public static final LONG_F4:I = 0x4a

.field public static final LONG_F5:I = 0x4c

.field public static final LONG_F6:I = 0x4e

.field public static final LONG_F7:I = 0x50

.field public static final LONG_M1:I = 0x2f

.field public static final LONG_M2:I = 0x2e

.field public static final LONG_M3:I = 0x2d

.field public static final LONG_M4:I = 0x2c

.field public static final LONG_M5:I = 0x2b

.field public static final LONG_M6:I = 0x2a

.field public static final LONG_M7:I = 0x29

.field public static final LONG_M8:I = 0x28

.field public static final LONG_M9:I = 0x27

.field public static final LONG_MAX_VALUE:I = 0x42

.field public static final LONG_MF1:I = 0x43

.field public static final LONG_MF2:I = 0x45

.field public static final LONG_MF3:I = 0x47

.field public static final LONG_MF4:I = 0x49

.field public static final LONG_MF5:I = 0x4b

.field public static final LONG_MF6:I = 0x4d

.field public static final LONG_MF7:I = 0x4f

.field public static final LONG_MIN_VALUE:I = 0x41

.field public static final MAPDB:I = 0x96

.field public static final MA_BOOL:I = 0xb2

.field public static final MA_INT:I = 0xb1

.field public static final MA_LONG:I = 0xb0

.field public static final MA_STRING:I = 0xb3

.field public static final MA_VAR:I = 0xb4

.field public static final NAMED:I = 0xaf

.field public static final NULL:I = 0x1

.field public static final OBJECT_STACK:I = 0xae

.field public static final POJO:I = 0xad

.field public static final PROPERTIES:I = 0xab

.field public static final SHORT:I = 0x5f

.field public static final SHORT_0:I = 0x5b

.field public static final SHORT_1:I = 0x5c

.field public static final SHORT_255:I = 0x5d

.field public static final SHORT_M1:I = 0x5a

.field public static final SHORT_M255:I = 0x5e

.field public static final STRING:I = 0x88

.field public static final STRING_0:I = 0x7d

.field public static final STRING_1:I = 0x7e

.field public static final STRING_10:I = 0x87

.field public static final STRING_2:I = 0x7f

.field public static final STRING_3:I = 0x80

.field public static final STRING_4:I = 0x81

.field public static final STRING_5:I = 0x82

.field public static final STRING_6:I = 0x83

.field public static final STRING_7:I = 0x84

.field public static final STRING_8:I = 0x85

.field public static final STRING_9:I = 0x86

.field public static final TREEMAP:I = 0xa4

.field public static final TREESET:I = 0xa7

.field public static final TUPLE2:I = 0x97

.field public static final TUPLE3:I = 0x98

.field public static final TUPLE4:I = 0x99

.field public static final TUPLE5:I = 0x9a

.field public static final TUPLE6:I = 0x9b

.field public static final TUPLE7:I = 0x9c

.field public static final TUPLE8:I = 0x9d

.field public static final UUID:I = 0x8e

.field public static final ZERO_FAIL:I
