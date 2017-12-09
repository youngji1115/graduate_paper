.class Lorg/mapdb/HTreeMap$4;
.super Ljava/util/AbstractCollection;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 869
    .local p0, "this":Lorg/mapdb/HTreeMap$4;, "Lorg/mapdb/HTreeMap.4;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$4;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 883
    .local p0, "this":Lorg/mapdb/HTreeMap$4;, "Lorg/mapdb/HTreeMap.4;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$4;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0, p1}, Lorg/mapdb/HTreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 878
    .local p0, "this":Lorg/mapdb/HTreeMap$4;, "Lorg/mapdb/HTreeMap.4;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$4;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "this":Lorg/mapdb/HTreeMap$4;, "Lorg/mapdb/HTreeMap.4;"
    new-instance v0, Lorg/mapdb/HTreeMap$ValueIterator;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$4;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {v0, v1}, Lorg/mapdb/HTreeMap$ValueIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 873
    .local p0, "this":Lorg/mapdb/HTreeMap$4;, "Lorg/mapdb/HTreeMap.4;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$4;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->size()I

    move-result v0

    return v0
.end method
