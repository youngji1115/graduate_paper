.class public abstract Lcom/kakao/auth/authorization/Authorizer;
.super Ljava/lang/Object;
.source "Authorizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;
    }
.end annotation


# instance fields
.field private transient hasInternetPermission:Z

.field protected transient onAuthorizationListener:Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkInternetPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    iget-boolean v1, p0, Lcom/kakao/auth/authorization/Authorizer;->hasInternetPermission:Z

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/Authorizer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v1, v2}, Lcom/kakao/util/helper/Utility;->isUsablePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    const-string v0, "This Operation needs INTERNET permission."

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/Authorizer;->doneOnOAuthError(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_1
    iput-boolean v0, p0, Lcom/kakao/auth/authorization/Authorizer;->hasInternetPermission:Z

    goto :goto_0
.end method

.method protected done(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 1
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kakao/auth/authorization/Authorizer;->onAuthorizationListener:Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kakao/auth/authorization/Authorizer;->onAuthorizationListener:Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;

    invoke-interface {v0, p1}, Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;->onAuthorizationCompletion(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected abstract doneOnOAuthError(Ljava/lang/String;)V
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/Session;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public setOnAuthorizationListener(Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;)V
    .locals 0
    .param p1, "onAuthorizationListener"    # Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kakao/auth/authorization/Authorizer;->onAuthorizationListener:Lcom/kakao/auth/authorization/Authorizer$OnAuthorizationListener;

    .line 64
    return-void
.end method
