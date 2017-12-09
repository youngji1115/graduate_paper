.class final Lorg/mapdb/Fun$15;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun;->filter(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Object;

.field final synthetic val$b:Ljava/lang/Object;

.field final synthetic val$c:Ljava/lang/Object;

.field final synthetic val$secondaryKeys:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lorg/mapdb/Fun$15;->val$secondaryKeys:Ljava/util/NavigableSet;

    iput-object p2, p0, Lorg/mapdb/Fun$15;->val$a:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mapdb/Fun$15;->val$b:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mapdb/Fun$15;->val$c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 959
    iget-object v3, p0, Lorg/mapdb/Fun$15;->val$secondaryKeys:Ljava/util/NavigableSet;

    iget-object v1, p0, Lorg/mapdb/Fun$15;->val$a:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mapdb/Fun$15;->val$b:Ljava/lang/Object;

    iget-object v4, p0, Lorg/mapdb/Fun$15;->val$c:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lorg/mapdb/Fun;->t4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple4;

    move-result-object v4

    iget-object v5, p0, Lorg/mapdb/Fun$15;->val$a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/Fun$15;->val$b:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mapdb/Fun;->HI()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/mapdb/Fun$15;->val$c:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-static {}, Lorg/mapdb/Fun;->HI()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-static {}, Lorg/mapdb/Fun;->HI()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v1, v2, v6}, Lorg/mapdb/Fun;->t4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple4;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 966
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple4;>;"
    new-instance v1, Lorg/mapdb/Fun$15$1;

    invoke-direct {v1, p0, v0}, Lorg/mapdb/Fun$15$1;-><init>(Lorg/mapdb/Fun$15;Ljava/util/Iterator;)V

    return-object v1

    .line 959
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple4;>;"
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Fun$15;->val$b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/mapdb/Fun$15;->val$c:Ljava/lang/Object;

    goto :goto_1
.end method
