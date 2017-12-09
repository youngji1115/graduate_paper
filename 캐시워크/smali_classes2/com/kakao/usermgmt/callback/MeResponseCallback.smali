.class public abstract Lcom/kakao/usermgmt/callback/MeResponseCallback;
.super Lcom/kakao/auth/ApiResponseCallback;
.source "MeResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/auth/ApiResponseCallback",
        "<",
        "Lcom/kakao/usermgmt/response/model/UserProfile;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kakao/auth/ApiResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccessForUiThread(Lcom/kakao/usermgmt/response/model/UserProfile;)V
    .locals 0
    .param p1, "result"    # Lcom/kakao/usermgmt/response/model/UserProfile;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/kakao/usermgmt/response/model/UserProfile;->saveUserToCache()V

    .line 28
    invoke-super {p0, p1}, Lcom/kakao/auth/ApiResponseCallback;->onSuccessForUiThread(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public bridge synthetic onSuccessForUiThread(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/kakao/usermgmt/response/model/UserProfile;

    invoke-virtual {p0, p1}, Lcom/kakao/usermgmt/callback/MeResponseCallback;->onSuccessForUiThread(Lcom/kakao/usermgmt/response/model/UserProfile;)V

    return-void
.end method
