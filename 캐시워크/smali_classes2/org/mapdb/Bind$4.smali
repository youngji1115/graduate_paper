.class final Lorg/mapdb/Bind$4;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
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

.field final synthetic val$secondary:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/mapdb/Bind$4;->val$secondary:Ljava/util/Set;

    iput-object p2, p0, Lorg/mapdb/Bind$4;->val$fun:Lorg/mapdb/Fun$Function2;

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
    .line 323
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_1

    .line 325
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$secondary:Ljava/util/Set;

    iget-object v3, p0, Lorg/mapdb/Bind$4;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-nez p2, :cond_2

    .line 328
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$secondary:Ljava/util/Set;

    iget-object v3, p0, Lorg/mapdb/Bind$4;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v2, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 332
    .local v1, "oldKey":Ljava/lang/Object;, "TK2;"
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v2, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "newKey":Ljava/lang/Object;, "TK2;"
    if-eq v1, v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$secondary:Ljava/util/Set;

    invoke-static {v1, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 335
    iget-object v2, p0, Lorg/mapdb/Bind$4;->val$secondary:Ljava/util/Set;

    invoke-static {v0, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
