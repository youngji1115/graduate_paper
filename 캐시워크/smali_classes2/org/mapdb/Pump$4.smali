.class final Lorg/mapdb/Pump$4;
.super Ljava/lang/Object;
.source "Pump.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Pump;->arrayIterator([Ljava/lang/Object;II)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$fromIndex:I

.field final synthetic val$toIndex:I


# direct methods
.method constructor <init>(II[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 482
    iput p1, p0, Lorg/mapdb/Pump$4;->val$fromIndex:I

    iput p2, p0, Lorg/mapdb/Pump$4;->val$toIndex:I

    iput-object p3, p0, Lorg/mapdb/Pump$4;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iget v0, p0, Lorg/mapdb/Pump$4;->val$fromIndex:I

    iput v0, p0, Lorg/mapdb/Pump$4;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 488
    iget v0, p0, Lorg/mapdb/Pump$4;->index:I

    iget v1, p0, Lorg/mapdb/Pump$4;->val$toIndex:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 493
    iget v0, p0, Lorg/mapdb/Pump$4;->index:I

    iget v1, p0, Lorg/mapdb/Pump$4;->val$toIndex:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 494
    :cond_0
    iget-object v0, p0, Lorg/mapdb/Pump$4;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lorg/mapdb/Pump$4;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/Pump$4;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
