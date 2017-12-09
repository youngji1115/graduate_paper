.class final Lcom/kakao/kakaotalk/response/model/ChatInfo$2;
.super Ljava/lang/Object;
.source "ChatInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaotalk/response/model/ChatInfo;
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
        "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kakao/kakaotalk/response/model/ChatInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 145
    new-instance v0, Lcom/kakao/kakaotalk/response/model/ChatInfo;

    invoke-direct {v0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo$2;->createFromParcel(Landroid/os/Parcel;)Lcom/kakao/kakaotalk/response/model/ChatInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kakao/kakaotalk/response/model/ChatInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 149
    new-array v0, p1, [Lcom/kakao/kakaotalk/response/model/ChatInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/kakao/kakaotalk/response/model/ChatInfo$2;->newArray(I)[Lcom/kakao/kakaotalk/response/model/ChatInfo;

    move-result-object v0

    return-object v0
.end method
