.class abstract Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;
.super Ljava/lang/Object;
.source "LongConcurrentLRUMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentLRUMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PriorityQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final heap:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 387
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;-><init>(IZ)V

    .line 388
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 5
    .param p1, "maxSize"    # I
    .param p2, "prepopulate"    # Z

    .prologue
    .line 390
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v3, 0x0

    iput v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 393
    if-nez p1, :cond_0

    .line 395
    const/4 v0, 0x2

    .line 413
    .local v0, "heapSize":I
    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    .line 414
    iput p1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->maxSize:I

    .line 416
    if-eqz p2, :cond_3

    .line 418
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->getSentinelObject()Ljava/lang/Object;

    move-result-object v2

    .line 419
    .local v2, "sentinel":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_3

    .line 420
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 421
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 422
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->getSentinelObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "heapSize":I
    .end local v1    # "i":I
    .end local v2    # "sentinel":Ljava/lang/Object;, "TT;"
    :cond_0
    const v3, 0x7fffffff

    if-ne p1, v3, :cond_1

    .line 406
    const v0, 0x7fffffff

    .restart local v0    # "heapSize":I
    goto :goto_0

    .line 410
    .end local v0    # "heapSize":I
    :cond_1
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "heapSize":I
    goto :goto_0

    .line 424
    .restart local v1    # "i":I
    .restart local v2    # "sentinel":Ljava/lang/Object;, "TT;"
    :cond_2
    iput p1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 427
    .end local v1    # "i":I
    .end local v2    # "sentinel":Ljava/lang/Object;, "TT;"
    :cond_3
    return-void
.end method

.method private downHeap()V
    .locals 6

    .prologue
    .line 589
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    const/4 v0, 0x1

    .line 590
    .local v0, "i":I
    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 591
    .local v3, "node":Ljava/lang/Object;, "TT;"
    shl-int/lit8 v1, v0, 0x1

    .line 592
    .local v1, "j":I
    add-int/lit8 v2, v1, 0x1

    .line 593
    .local v2, "k":I
    iget v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-gt v2, v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {p0, v4, v5}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    move v1, v2

    .line 596
    :cond_0
    :goto_0
    iget v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4, v3}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget-object v5, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    .line 598
    move v0, v1

    .line 599
    shl-int/lit8 v1, v0, 0x1

    .line 600
    add-int/lit8 v2, v1, 0x1

    .line 601
    iget v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-gt v2, v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {p0, v4, v5}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 602
    move v1, v2

    goto :goto_0

    .line 605
    :cond_1
    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 606
    return-void
.end method

.method private upHeap()V
    .locals 5

    .prologue
    .line 577
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    iget v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 578
    .local v0, "i":I
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 579
    .local v2, "node":Ljava/lang/Object;, "TT;"
    ushr-int/lit8 v1, v0, 0x1

    .line 580
    .local v1, "j":I
    :goto_0
    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 581
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 582
    move v0, v1

    .line 583
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 586
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 488
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    aput-object p1, v0, v1

    .line 489
    invoke-direct {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->upHeap()V

    .line 490
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 570
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-gt v0, v1, :cond_0

    .line 571
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 573
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 574
    return-void
.end method

.method protected final getHeapArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    return-object v0
.end method

.method protected getSentinelObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertWithOverflow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 504
    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    iget v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->maxSize:I

    if-ge v1, v2, :cond_0

    .line 505
    invoke-virtual {p0, p1}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/4 v0, 0x0

    .line 513
    :goto_0
    return-object v0

    .line 507
    :cond_0
    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-virtual {p0, p1, v1}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v0, v1, v3

    .line 509
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 510
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->updateTop()Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v0, p1

    .line 513
    goto :goto_0
.end method

.method protected abstract lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public final pop()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 528
    iget v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    if-lez v2, :cond_0

    .line 529
    iget-object v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    aget-object v0, v2, v5

    .line 530
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget v4, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    .line 531
    iget-object v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    iget v3, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    aput-object v1, v2, v3

    .line 532
    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    .line 533
    invoke-direct {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->downHeap()V

    .line 536
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    iget v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->size:I

    return v0
.end method

.method public final top()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final updateTop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue<TT;>;"
    invoke-direct {p0}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->downHeap()V

    .line 560
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;->heap:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
