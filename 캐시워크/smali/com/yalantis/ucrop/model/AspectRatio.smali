.class public Lcom/yalantis/ucrop/model/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yalantis/ucrop/model/AspectRatio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAspectRatioTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAspectRatioX:F

.field private final mAspectRatioY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yalantis/ucrop/model/AspectRatio$1;

    invoke-direct {v0}, Lcom/yalantis/ucrop/model/AspectRatio$1;-><init>()V

    sput-object v0, Lcom/yalantis/ucrop/model/AspectRatio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioTitle:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioX:F

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioY:F

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "aspectRatioTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "aspectRatioX"    # F
    .param p3, "aspectRatioY"    # F

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioTitle:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioX:F

    .line 20
    iput p3, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioY:F

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatioTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAspectRatioX()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioX:F

    return v0
.end method

.method public getAspectRatioY()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioY:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    iget v0, p0, Lcom/yalantis/ucrop/model/AspectRatio;->mAspectRatioY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    return-void
.end method
