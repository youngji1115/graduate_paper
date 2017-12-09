.class public final Lorg/mapdb/SerializerBase$singletons;
.super Ljava/lang/Object;
.source "SerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "singletons"
.end annotation


# static fields
.field static final all:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final reverse:Lorg/mapdb/LongHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1418
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    .line 1419
    new-instance v2, Lorg/mapdb/LongHashMap;

    invoke-direct {v2}, Lorg/mapdb/LongHashMap;-><init>()V

    sput-object v2, Lorg/mapdb/SerializerBase$singletons;->reverse:Lorg/mapdb/LongHashMap;

    .line 1422
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_LONG:Lorg/mapdb/BTreeKeySerializer;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_INT:Lorg/mapdb/BTreeKeySerializer;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->REVERSE_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->TUPLE2_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->TUPLE3_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->TUPLE4_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->TUPLE5_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->TUPLE6_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x36

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->STRING_ASCII:Lorg/mapdb/Serializer;

    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->STRING_INTERN:Lorg/mapdb/Serializer;

    const/16 v4, 0x31

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->ILLEGAL_ACCESS:Lorg/mapdb/Serializer;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->BASIC:Lorg/mapdb/Serializer;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1445
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->BYTE_ARRAY:Lorg/mapdb/Serializer;

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->JAVA:Lorg/mapdb/Serializer;

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->UUID:Lorg/mapdb/Serializer;

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->STRING:Lorg/mapdb/Serializer;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->CHAR_ARRAY:Lorg/mapdb/Serializer;

    const/16 v4, 0x1d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->INT_ARRAY:Lorg/mapdb/Serializer;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->LONG_ARRAY:Lorg/mapdb/Serializer;

    const/16 v4, 0x1f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Serializer;->DOUBLE_ARRAY:Lorg/mapdb/Serializer;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->BASIC:Lorg/mapdb/Hasher;

    const/16 v4, 0x21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->BYTE_ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->CHAR_ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->INT_ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x24

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->LONG_ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x25

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->DOUBLE_ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x26

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Hasher;->ARRAY:Lorg/mapdb/Hasher;

    const/16 v4, 0x39

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1462
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->BYTE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->CHAR_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->INT_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x29

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->LONG_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->DOUBLE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->COMPARABLE_ARRAY_COMPARATOR:Ljava/util/Comparator;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    sget-object v3, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    const/high16 v4, -0x80000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    sget-object v2, Lorg/mapdb/SerializerBase$singletons;->all:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1474
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    sget-object v3, Lorg/mapdb/SerializerBase$singletons;->reverse:Lorg/mapdb/LongHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lorg/mapdb/LongHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1476
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
