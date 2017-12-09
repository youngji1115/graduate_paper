.class final Lorg/mapdb/Fun$14;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun;->filter(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/Object;

.field final synthetic val$b:Ljava/lang/Object;

.field final synthetic val$secondaryKeys:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lorg/mapdb/Fun$14;->val$secondaryKeys:Ljava/util/NavigableSet;

    iput-object p2, p0, Lorg/mapdb/Fun$14;->val$a:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mapdb/Fun$14;->val$b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 926
    iget-object v2, p0, Lorg/mapdb/Fun$14;->val$secondaryKeys:Ljava/util/NavigableSet;

    iget-object v1, p0, Lorg/mapdb/Fun$14;->val$a:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mapdb/Fun$14;->val$b:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/mapdb/Fun;->t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple3;

    move-result-object v3

    iget-object v4, p0, Lorg/mapdb/Fun$14;->val$a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mapdb/Fun$14;->val$b:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mapdb/Fun;->HI()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {}, Lorg/mapdb/Fun;->HI()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lorg/mapdb/Fun;->t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple3;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 933
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple3;>;"
    new-instance v1, Lorg/mapdb/Fun$14$1;

    invoke-direct {v1, p0, v0}, Lorg/mapdb/Fun$14$1;-><init>(Lorg/mapdb/Fun$14;Ljava/util/Iterator;)V

    return-object v1

    .line 926
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple3;>;"
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Fun$14;->val$b:Ljava/lang/Object;

    goto :goto_0
.end method
