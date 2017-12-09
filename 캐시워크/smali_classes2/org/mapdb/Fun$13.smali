.class final Lorg/mapdb/Fun$13;
.super Ljava/lang/Object;
.source "Fun.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Fun;->filter(Ljava/util/NavigableSet;Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TK1;>;"
    }
.end annotation


# instance fields
.field final synthetic val$hi:Ljava/lang/Object;

.field final synthetic val$hiInc:Z

.field final synthetic val$lo:Ljava/lang/Object;

.field final synthetic val$loInc:Z

.field final synthetic val$secondaryKeys:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lorg/mapdb/Fun$13;->val$secondaryKeys:Ljava/util/NavigableSet;

    iput-object p2, p0, Lorg/mapdb/Fun$13;->val$lo:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/mapdb/Fun$13;->val$loInc:Z

    iput-object p4, p0, Lorg/mapdb/Fun$13;->val$hi:Ljava/lang/Object;

    iput-boolean p5, p0, Lorg/mapdb/Fun$13;->val$hiInc:Z

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
            "<TK1;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 891
    iget-object v2, p0, Lorg/mapdb/Fun$13;->val$secondaryKeys:Ljava/util/NavigableSet;

    iget-object v3, p0, Lorg/mapdb/Fun$13;->val$lo:Ljava/lang/Object;

    invoke-static {v3, v1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    iget-boolean v4, p0, Lorg/mapdb/Fun$13;->val$loInc:Z

    iget-object v5, p0, Lorg/mapdb/Fun$13;->val$hi:Ljava/lang/Object;

    iget-boolean v6, p0, Lorg/mapdb/Fun$13;->val$hiInc:Z

    if-eqz v6, :cond_0

    sget-object v1, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    :cond_0
    invoke-static {v5, v1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v1

    iget-boolean v5, p0, Lorg/mapdb/Fun$13;->val$hiInc:Z

    invoke-interface {v2, v3, v4, v1, v5}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 898
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Fun$Tuple2<TK2;TK1;>;>;"
    new-instance v1, Lorg/mapdb/Fun$13$1;

    invoke-direct {v1, p0, v0}, Lorg/mapdb/Fun$13$1;-><init>(Lorg/mapdb/Fun$13;Ljava/util/Iterator;)V

    return-object v1
.end method
