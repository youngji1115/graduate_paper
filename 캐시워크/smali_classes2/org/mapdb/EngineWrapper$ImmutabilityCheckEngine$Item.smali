.class public Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;
.super Ljava/lang/Object;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Item"
.end annotation


# instance fields
.field final item:Ljava/lang/Object;

.field final oldChecksum:I

.field final serializer:Lorg/mapdb/Serializer;


# direct methods
.method public constructor <init>(Lorg/mapdb/Serializer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "serializer"    # Lorg/mapdb/Serializer;
    .param p2, "item"    # Ljava/lang/Object;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 246
    :cond_1
    iput-object p1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->serializer:Lorg/mapdb/Serializer;

    .line 247
    iput-object p2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->item:Ljava/lang/Object;

    .line 248
    invoke-direct {p0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->checksum()I

    move-result v0

    iput v0, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->oldChecksum:I

    .line 249
    iget v0, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->oldChecksum:I

    invoke-direct {p0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->checksum()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "inconsistent serialization"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 250
    :cond_2
    return-void
.end method

.method private checksum()I
    .locals 5

    .prologue
    .line 254
    :try_start_0
    new-instance v2, Lorg/mapdb/DataOutput2;

    invoke-direct {v2}, Lorg/mapdb/DataOutput2;-><init>()V

    .line 255
    .local v2, "out":Lorg/mapdb/DataOutput2;
    iget-object v3, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->serializer:Lorg/mapdb/Serializer;

    iget-object v4, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->item:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v2}, Lorg/mapdb/DataOutput2;->copyBytes()[B

    move-result-object v0

    .line 257
    .local v0, "bb":[B
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 258
    .end local v0    # "bb":[B
    .end local v2    # "out":Lorg/mapdb/DataOutput2;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/IOError;

    invoke-direct {v3, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method check()V
    .locals 4

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->checksum()I

    move-result v0

    .line 265
    .local v0, "newChecksum":I
    iget v1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->oldChecksum:I

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record instance was modified: \n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->item:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->serializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 266
    :cond_0
    return-void
.end method
