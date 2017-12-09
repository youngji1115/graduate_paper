.class public final Lorg/mapdb/BTreeMap$LeafNode;
.super Ljava/lang/Object;
.source "BTreeMap.java"

# interfaces
.implements Lorg/mapdb/BTreeMap$BNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LeafNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final keys:[Ljava/lang/Object;

.field final next:J

.field final vals:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const-class v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeMap$LeafNode;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;J)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;
    .param p3, "next"    # J

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    .line 265
    iput-object p2, p0, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    .line 266
    iput-wide p3, p0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    .line 267
    sget-boolean v0, Lorg/mapdb/BTreeMap$LeafNode;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 268
    :cond_0
    return-void
.end method


# virtual methods
.method public child()[J
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public highKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public keys()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public next()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaf(K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", L="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vals()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    return-object v0
.end method
