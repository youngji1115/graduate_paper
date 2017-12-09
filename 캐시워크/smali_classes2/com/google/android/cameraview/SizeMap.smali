.class Lcom/google/android/cameraview/SizeMap;
.super Ljava/lang/Object;
.source "SizeMap.java"


# instance fields
.field private final mRatios:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/cameraview/Size;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/cameraview/Size;)Z
    .locals 6
    .param p1, "size"    # Lcom/google/android/cameraview/Size;

    .prologue
    const/4 v2, 0x1

    .line 39
    iget-object v3, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    .line 40
    .local v0, "ratio":Lcom/google/android/cameraview/AspectRatio;
    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/AspectRatio;->matches(Lcom/google/android/cameraview/Size;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    iget-object v3, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    .line 42
    .local v1, "sizes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const/4 v2, 0x0

    .line 54
    .end local v0    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    :goto_0
    return v2

    .line 45
    .restart local v0    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .end local v1    # "sizes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    :cond_2
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 52
    .restart local v1    # "sizes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v3, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 76
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method ratios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/google/android/cameraview/AspectRatio;)V
    .locals 1
    .param p1, "ratio"    # Lcom/google/android/cameraview/AspectRatio;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "ratio"    # Lcom/google/android/cameraview/AspectRatio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/cameraview/AspectRatio;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/cameraview/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/cameraview/SizeMap;->mRatios:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
