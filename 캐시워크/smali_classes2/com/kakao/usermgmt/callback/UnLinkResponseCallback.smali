.class public abstract Lcom/kakao/usermgmt/callback/UnLinkResponseCallback;
.super Lcom/kakao/auth/ApiResponseCallback;
.source "UnLinkResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/auth/ApiResponseCallback",
        "<",
        "Ljava/lang/Long;",
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
.method public onSuccessForUiThread(Ljava/lang/Long;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 27
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/Session;->close()V

    .line 28
    invoke-super {p0, p1}, Lcom/kakao/auth/ApiResponseCallback;->onSuccessForUiThread(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public bridge synthetic onSuccessForUiThread(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/kakao/usermgmt/callback/UnLinkResponseCallback;->onSuccessForUiThread(Ljava/lang/Long;)V

    return-void
.end method
