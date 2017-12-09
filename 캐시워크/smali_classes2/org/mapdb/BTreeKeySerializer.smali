.class public abstract Lorg/mapdb/BTreeKeySerializer;
.super Ljava/lang/Object;
.source "BTreeKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;,
        Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;,
        Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;,
        Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;,
        Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;,
        Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BASIC:Lorg/mapdb/BTreeKeySerializer;

.field public static final STRING:Lorg/mapdb/BTreeKeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/BTreeKeySerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TUPLE2:Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

.field public static final TUPLE3:Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

.field public static final TUPLE4:Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

.field public static final ZERO_OR_POSITIVE_INT:Lorg/mapdb/BTreeKeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/BTreeKeySerializer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO_OR_POSITIVE_LONG:Lorg/mapdb/BTreeKeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/BTreeKeySerializer",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    sget-object v2, Lorg/mapdb/Serializer;->BASIC:Lorg/mapdb/Serializer;

    invoke-direct {v0, v2}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->BASIC:Lorg/mapdb/BTreeKeySerializer;

    .line 106
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$1;

    invoke-direct {v0}, Lorg/mapdb/BTreeKeySerializer$1;-><init>()V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_LONG:Lorg/mapdb/BTreeKeySerializer;

    .line 140
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$2;

    invoke-direct {v0}, Lorg/mapdb/BTreeKeySerializer$2;-><init>()V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->ZERO_OR_POSITIVE_INT:Lorg/mapdb/BTreeKeySerializer;

    .line 175
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$3;

    invoke-direct {v0}, Lorg/mapdb/BTreeKeySerializer$3;-><init>()V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    .line 274
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    invoke-direct {v0, v1, v1, v1}, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;-><init>(Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->TUPLE2:Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .line 393
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->TUPLE3:Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    .line 553
    new-instance v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    sput-object v0, Lorg/mapdb/BTreeKeySerializer;->TUPLE4:Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    return-void
.end method

.method public static leadingValuePackRead(Ljava/io/DataInput;[BI)[B
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .param p1, "previous"    # [B
    .param p2, "ignoreLeadingCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 216
    .local v2, "len":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    .line 219
    :cond_0
    invoke-static {p0}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v0

    .line 221
    .local v0, "actualCommon":I
    new-array v1, v2, [B

    .line 223
    .local v1, "buf":[B
    if-nez p1, :cond_1

    .line 224
    const/4 v0, 0x0

    .line 228
    :cond_1
    if-lez v0, :cond_2

    .line 229
    const/4 v3, 0x0

    invoke-interface {p0, v1, v3, p2}, Ljava/io/DataInput;->readFully([BII)V

    .line 230
    sub-int v3, v0, p2

    invoke-static {p1, p2, v1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :cond_2
    sub-int v3, v2, v0

    invoke-interface {p0, v1, v0, v3}, Ljava/io/DataInput;->readFully([BII)V

    goto :goto_0
.end method

.method public static leadingValuePackWrite(Ljava/io/DataOutput;[B[BI)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "buf"    # [B
    .param p2, "previous"    # [B
    .param p3, "ignoreLeadingCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 244
    if-nez p1, :cond_0

    .line 245
    invoke-static {p0, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 269
    :goto_0
    return-void

    .line 249
    :cond_0
    move v0, p3

    .line 251
    .local v0, "actualCommon":I
    if-eqz p2, :cond_2

    .line 252
    array-length v2, p1

    array-length v3, p2

    if-le v2, v3, :cond_3

    array-length v1, p2

    .line 254
    .local v1, "maxCommon":I
    :goto_1
    const/16 v2, 0x7fff

    if-le v1, v2, :cond_1

    const/16 v1, 0x7fff

    .line 256
    :cond_1
    :goto_2
    if-ge v0, v1, :cond_2

    .line 257
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_4

    .line 264
    .end local v1    # "maxCommon":I
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 265
    invoke-static {p0, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 266
    invoke-interface {p0, p1, v4, p3}, Ljava/io/DataOutput;->write([BII)V

    .line 267
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-interface {p0, p1, v0, v2}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_0

    .line 252
    :cond_3
    array-length v1, p1

    goto :goto_1

    .line 256
    .restart local v1    # "maxCommon":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public abstract deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getComparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TK;>;"
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
