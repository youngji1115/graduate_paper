.class final Lcom/kakao/usermgmt/response/model/UserProfile$1;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/usermgmt/response/model/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kakao/usermgmt/response/model/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 308
    new-instance v0, Lcom/kakao/usermgmt/response/model/UserProfile;

    invoke-direct {v0, p1}, Lcom/kakao/usermgmt/response/model/UserProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/kakao/usermgmt/response/model/UserProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kakao/usermgmt/response/model/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 312
    new-array v0, p1, [Lcom/kakao/usermgmt/response/model/UserProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/kakao/usermgmt/response/model/UserProfile$1;->newArray(I)[Lcom/kakao/usermgmt/response/model/UserProfile;

    move-result-object v0

    return-object v0
.end method
