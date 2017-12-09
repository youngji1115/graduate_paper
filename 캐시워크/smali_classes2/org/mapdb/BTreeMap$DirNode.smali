.class public final Lorg/mapdb/BTreeMap$DirNode;
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
    name = "DirNode"
.end annotation


# instance fields
.field final child:[J

.field final keys:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .param p1, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, "child":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    .line 233
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;[J)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/Object;
    .param p2, "child"    # [J

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    .line 228
    iput-object p2, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    .line 229
    return-void
.end method


# virtual methods
.method public child()[J
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    return-object v0
.end method

.method public highKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public keys()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public next()J
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dir(K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method
