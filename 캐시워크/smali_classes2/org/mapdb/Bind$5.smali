.class final Lorg/mapdb/Bind$5;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Bind$MapListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fun:Lorg/mapdb/Fun$Function2;

.field final synthetic val$secondary:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lorg/mapdb/Bind$5;->val$secondary:Ljava/util/Map;

    iput-object p2, p0, Lorg/mapdb/Bind$5;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_1

    .line 376
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$secondary:Ljava/util/Map;

    iget-object v3, p0, Lorg/mapdb/Bind$5;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    if-nez p2, :cond_2

    .line 379
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$secondary:Ljava/util/Map;

    iget-object v3, p0, Lorg/mapdb/Bind$5;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 382
    :cond_2
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v2, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 383
    .local v1, "oldKey":Ljava/lang/Object;, "TK2;"
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v2, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "newKey":Ljava/lang/Object;, "TK2;"
    if-eq v1, v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$secondary:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v2, p0, Lorg/mapdb/Bind$5;->val$secondary:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
