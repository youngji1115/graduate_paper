.class public Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
.super Ljava/lang/Object;
.source "AuthorizationCode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kakao/auth/authorization/authcode/AuthorizationCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authorizationCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode$1;

    invoke-direct {v0}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode$1;-><init>()V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "authorizationCode"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->authorizationCode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/kakao/auth/authorization/authcode/AuthorizationCode$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/kakao/auth/authorization/authcode/AuthorizationCode$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromRedirectedUri(Landroid/net/Uri;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .locals 2
    .param p0, "redirectedUri"    # Landroid/net/Uri;

    .prologue
    .line 40
    const-string v1, "code"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createNew(Ljava/lang/String;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v1

    return-object v1
.end method

.method private static createNew(Ljava/lang/String;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .locals 1
    .param p0, "authCode"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/kakao/util/helper/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createEmptyCode()Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    invoke-direct {v0, p0}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthorizationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->authorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorizationCode()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->authorizationCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/kakao/util/helper/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->authorizationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
