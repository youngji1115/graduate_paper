.class final Lorg/mapdb/BTreeKeySerializer$1;
.super Lorg/mapdb/BTreeKeySerializer;
.source "BTreeKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeKeySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-array v1, p4, [Ljava/lang/Long;

    .line 122
    .local v1, "ret":[Ljava/lang/Object;
    const-wide/16 v2, 0x0

    .line 123
    .local v2, "prev":J
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 124
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-object v1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-lt p2, p3, :cond_1

    .line 117
    :cond_0
    return-void

    .line 110
    :cond_1
    aget-object v3, p4, p2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 111
    .local v4, "prev":J
    invoke-static {p1, v4, v5}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 112
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 113
    aget-object v3, p4, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 114
    .local v0, "curr":J
    sub-long v6, v0, v4

    invoke-static {p1, v6, v7}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 115
    move-wide v4, v0

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
