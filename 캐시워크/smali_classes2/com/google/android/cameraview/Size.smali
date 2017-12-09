.class public Lcom/google/android/cameraview/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/cameraview/Size;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    .line 37
    iput p2, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/cameraview/Size;)I
    .locals 3
    .param p1, "another"    # Lcom/google/android/cameraview/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    iget v1, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/google/android/cameraview/Size;->mWidth:I

    iget v2, p1, Lcom/google/android/cameraview/Size;->mHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/cameraview/Size;

    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/Size;->compareTo(Lcom/google/android/cameraview/Size;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    instance-of v3, p1, Lcom/google/android/cameraview/Size;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/google/android/cameraview/Size;

    .line 58
    .local v0, "size":Lcom/google/android/cameraview/Size;
    iget v3, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    iget v4, v0, Lcom/google/android/cameraview/Size;->mWidth:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    iget v4, v0, Lcom/google/android/cameraview/Size;->mHeight:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    iget v1, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/cameraview/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/cameraview/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
