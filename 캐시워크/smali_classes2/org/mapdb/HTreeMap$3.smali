.class final Lorg/mapdb/HTreeMap$3;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<[[J>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-class v0, Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/HTreeMap$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/DataInput;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$3;->deserialize(Ljava/io/DataInput;I)[[J

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)[[J
    .locals 10
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    .line 185
    new-array v3, v9, [[J

    .line 188
    .local v3, "ret":[[J
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    .line 189
    .local v2, "nulls":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_2

    .line 190
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_1

    .line 191
    new-array v4, v8, [J

    .line 192
    .local v4, "subarray":[J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v8, :cond_0

    .line 193
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_0
    aput-object v4, v3, v0

    .line 197
    .end local v1    # "j":I
    .end local v4    # "subarray":[J
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    return-object v3
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/DataOutput;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    check-cast p2, [[J

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$3;->serialize(Ljava/io/DataOutput;[[J)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;[[J)V
    .locals 11
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # [[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    .line 154
    sget-boolean v7, Lorg/mapdb/HTreeMap$3;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    array-length v7, p2

    if-eq v7, v10, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 157
    :cond_0
    const/4 v6, 0x0

    .line 158
    .local v6, "nulls":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_3

    .line 159
    aget-object v7, p2, v1

    if-eqz v7, :cond_1

    .line 160
    aget-object v0, p2, v1

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    .line 161
    .local v4, "l":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 162
    const/4 v7, 0x1

    shl-int/2addr v7, v1

    or-int/2addr v6, v7

    .line 158
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "l":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .restart local v0    # "arr$":[J
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "l":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "l":J
    :cond_3
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeShort(I)V

    .line 171
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_6

    .line 172
    aget-object v7, p2, v1

    if-eqz v7, :cond_5

    .line 173
    sget-boolean v7, Lorg/mapdb/HTreeMap$3;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    aget-object v7, p2, v1

    array-length v7, v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 174
    :cond_4
    aget-object v0, p2, v1

    .restart local v0    # "arr$":[J
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_5

    aget-wide v4, v0, v2

    .line 175
    .restart local v4    # "l":J
    invoke-static {p1, v4, v5}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 171
    .end local v0    # "arr$":[J
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "l":J
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    :cond_6
    return-void
.end method
