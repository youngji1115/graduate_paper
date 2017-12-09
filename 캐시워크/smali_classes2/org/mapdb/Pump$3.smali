.class final Lorg/mapdb/Pump$3;
.super Ljava/lang/Object;
.source "Pump.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Pump;->merge([Ljava/util/Iterator;)Ljava/util/Iterator;
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
.field i:I

.field next:Ljava/lang/Object;

.field final synthetic val$iters:[Ljava/util/Iterator;


# direct methods
.method constructor <init>([Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lorg/mapdb/Pump$3;->val$iters:[Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/Pump$3;->i:I

    .line 258
    iput-object p0, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lorg/mapdb/Pump$3;->next()Ljava/lang/Object;

    .line 261
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 269
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 272
    :cond_0
    iget-object v2, p0, Lorg/mapdb/Pump$3;->val$iters:[Ljava/util/Iterator;

    iget v3, p0, Lorg/mapdb/Pump$3;->i:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 273
    iget v2, p0, Lorg/mapdb/Pump$3;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mapdb/Pump$3;->i:I

    .line 274
    iget v2, p0, Lorg/mapdb/Pump$3;->i:I

    iget-object v3, p0, Lorg/mapdb/Pump$3;->val$iters:[Ljava/util/Iterator;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 276
    iget-object v0, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    .line 277
    .local v0, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    move-object v1, v0

    .line 285
    .end local v0    # "ret":Ljava/lang/Object;
    .local v1, "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 283
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    .line 284
    .restart local v0    # "ret":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mapdb/Pump$3;->val$iters:[Ljava/util/Iterator;

    iget v3, p0, Lorg/mapdb/Pump$3;->i:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/mapdb/Pump$3;->next:Ljava/lang/Object;

    move-object v1, v0

    .line 285
    .end local v0    # "ret":Ljava/lang/Object;
    .restart local v1    # "ret":Ljava/lang/Object;
    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
