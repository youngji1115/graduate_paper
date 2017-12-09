.class public Lcom/google/android/cameraview/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/cameraview/AspectRatio;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mX:I

.field private final mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    sput-object v0, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroid/support/v4/util/SparseArrayCompat;

    .line 173
    new-instance v0, Lcom/google/android/cameraview/AspectRatio$1;

    invoke-direct {v0}, Lcom/google/android/cameraview/AspectRatio$1;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/AspectRatio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    .line 87
    iput p2, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    .line 88
    return-void
.end method

.method private static gcd(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 154
    :goto_0
    if-eqz p1, :cond_0

    .line 155
    move v0, p1

    .line 156
    .local v0, "c":I
    rem-int p1, p0, p1

    .line 157
    move p0, v0

    .line 158
    goto :goto_0

    .line 159
    .end local v0    # "c":I
    :cond_0
    return p0
.end method

.method public static of(II)Lcom/google/android/cameraview/AspectRatio;
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->gcd(II)I

    move-result v1

    .line 45
    .local v1, "gcd":I
    div-int/2addr p0, v1

    .line 46
    div-int/2addr p1, v1

    .line 47
    sget-object v4, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/SparseArrayCompat;

    .line 48
    .local v0, "arrayX":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/google/android/cameraview/AspectRatio;>;"
    if-nez v0, :cond_0

    .line 49
    new-instance v2, Lcom/google/android/cameraview/AspectRatio;

    invoke-direct {v2, p0, p1}, Lcom/google/android/cameraview/AspectRatio;-><init>(II)V

    .line 50
    .local v2, "ratio":Lcom/google/android/cameraview/AspectRatio;
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    .end local v0    # "arrayX":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/google/android/cameraview/AspectRatio;>;"
    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 51
    .restart local v0    # "arrayX":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Lcom/google/android/cameraview/AspectRatio;>;"
    invoke-virtual {v0, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v4, Lcom/google/android/cameraview/AspectRatio;->sCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, p0, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    move-object v3, v2

    .line 60
    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    .local v3, "ratio":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 55
    .end local v3    # "ratio":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/AspectRatio;

    .line 56
    .restart local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    if-nez v2, :cond_1

    .line 57
    new-instance v2, Lcom/google/android/cameraview/AspectRatio;

    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    invoke-direct {v2, p0, p1}, Lcom/google/android/cameraview/AspectRatio;-><init>(II)V

    .line 58
    .restart local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    invoke-virtual {v0, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v3, v2

    .line 60
    .restart local v3    # "ratio":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/cameraview/AspectRatio;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 73
    .local v1, "position":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed aspect ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "x":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "y":I
    invoke-static {v2, v3}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 80
    .end local v2    # "x":I
    .end local v3    # "y":I
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed aspect ratio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public compareTo(Lcom/google/android/cameraview/AspectRatio;)I
    .locals 2
    .param p1, "another"    # Lcom/google/android/cameraview/AspectRatio;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/cameraview/AspectRatio;->toFloat()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 140
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, p1}, Lcom/google/android/cameraview/AspectRatio;->compareTo(Lcom/google/android/cameraview/AspectRatio;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    instance-of v3, p1, Lcom/google/android/cameraview/AspectRatio;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    .line 115
    .local v0, "ratio":Lcom/google/android/cameraview/AspectRatio;
    iget v3, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    iget v4, v0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget v4, v0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public inverse()Lcom/google/android/cameraview/AspectRatio;
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-static {v0, v1}, Lcom/google/android/cameraview/AspectRatio;->of(II)Lcom/google/android/cameraview/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public matches(Lcom/google/android/cameraview/Size;)Z
    .locals 5
    .param p1, "size"    # Lcom/google/android/cameraview/Size;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/cameraview/AspectRatio;->gcd(II)I

    move-result v0

    .line 100
    .local v0, "gcd":I
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v3

    div-int v1, v3, v0

    .line 101
    .local v1, "x":I
    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v3

    div-int v2, v3, v0

    .line 102
    .local v2, "y":I
    iget v3, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toFloat()F
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/google/android/cameraview/AspectRatio;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
