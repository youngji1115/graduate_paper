.class Lcom/amazonaws/auth/ChunkContentIterator;
.super Ljava/lang/Object;
.source "ChunkContentIterator.java"


# instance fields
.field private pos:I

.field private final signedChunk:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "signedChunk"    # [B

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->signedChunk:[B

    .line 25
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    iget-object v1, p0, Lcom/amazonaws/auth/ChunkContentIterator;->signedChunk:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 32
    if-nez p3, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/ChunkContentIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const/4 v0, -0x1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/auth/ChunkContentIterator;->signedChunk:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    sub-int v1, v2, v3

    .line 37
    .local v1, "remaingBytesNum":I
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    .local v0, "bytesToRead":I
    iget-object v2, p0, Lcom/amazonaws/auth/ChunkContentIterator;->signedChunk:[B

    iget v3, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v2, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/amazonaws/auth/ChunkContentIterator;->pos:I

    goto :goto_0
.end method
