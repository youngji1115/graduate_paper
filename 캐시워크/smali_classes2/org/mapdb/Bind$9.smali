.class final Lorg/mapdb/Bind$9;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->histogram(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/concurrent/ConcurrentMap;Lorg/mapdb/Fun$Function2;)V
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
.field final synthetic val$entryToCategory:Lorg/mapdb/Fun$Function2;

.field final synthetic val$histogram:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method constructor <init>(Lorg/mapdb/Fun$Function2;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lorg/mapdb/Bind$9;->val$entryToCategory:Lorg/mapdb/Fun$Function2;

    iput-object p2, p0, Lorg/mapdb/Bind$9;->val$histogram:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private incrementHistogram(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "i"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;J)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "category":Ljava/lang/Object;, "TC;"
    :cond_0
    iget-object v2, p0, Lorg/mapdb/Bind$9;->val$histogram:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 595
    .local v1, "oldCount":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 597
    iget-object v2, p0, Lorg/mapdb/Bind$9;->val$histogram:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 602
    .local v0, "newCount":Ljava/lang/Long;
    iget-object v2, p0, Lorg/mapdb/Bind$9;->val$histogram:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x1

    const-wide/16 v4, -0x1

    .line 572
    if-nez p3, :cond_1

    .line 574
    iget-object v3, p0, Lorg/mapdb/Bind$9;->val$entryToCategory:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "category":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, v0, v4, v5}, Lorg/mapdb/Bind$9;->incrementHistogram(Ljava/lang/Object;J)V

    .line 589
    .end local v0    # "category":Ljava/lang/Object;, "TC;"
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    if-nez p2, :cond_2

    .line 578
    iget-object v3, p0, Lorg/mapdb/Bind$9;->val$entryToCategory:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 579
    .restart local v0    # "category":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, v0, v6, v7}, Lorg/mapdb/Bind$9;->incrementHistogram(Ljava/lang/Object;J)V

    goto :goto_0

    .line 582
    .end local v0    # "category":Ljava/lang/Object;, "TC;"
    :cond_2
    iget-object v3, p0, Lorg/mapdb/Bind$9;->val$entryToCategory:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 583
    .local v2, "oldCat":Ljava/lang/Object;, "TC;"
    iget-object v3, p0, Lorg/mapdb/Bind$9;->val$entryToCategory:Lorg/mapdb/Fun$Function2;

    invoke-interface {v3, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 584
    .local v1, "newCat":Ljava/lang/Object;, "TC;"
    if-eq v2, v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    invoke-direct {p0, v2, v4, v5}, Lorg/mapdb/Bind$9;->incrementHistogram(Ljava/lang/Object;J)V

    .line 586
    invoke-direct {p0, v2, v6, v7}, Lorg/mapdb/Bind$9;->incrementHistogram(Ljava/lang/Object;J)V

    goto :goto_0
.end method
