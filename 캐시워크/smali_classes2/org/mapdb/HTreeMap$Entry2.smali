.class Lorg/mapdb/HTreeMap$Entry2;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iput-object p2, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    .line 1158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1177
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Hasher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mapdb/HTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    const/4 v1, 0x0

    .line 1182
    iget-object v2, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v3, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/mapdb/HTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    xor-int/2addr v1, v2

    return v1

    :cond_0
    iget-object v2, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v2, v2, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    iget-object v3, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lorg/mapdb/Hasher;->hashCode(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, "this":Lorg/mapdb/HTreeMap$Entry2;, "Lorg/mapdb/HTreeMap<TK;TV;>.Entry2;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$Entry2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$Entry2;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/mapdb/HTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
