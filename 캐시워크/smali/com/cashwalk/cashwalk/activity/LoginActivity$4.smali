.class Lcom/cashwalk/cashwalk/activity/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->justGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 197
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 3
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 172
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    if-nez v2, :cond_0

    .line 173
    new-instance v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$4$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$4$1;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity$4;)V

    .line 181
    .local v1, "tracker":Lcom/facebook/ProfileTracker;
    invoke-virtual {v1}, Lcom/facebook/ProfileTracker;->startTracking()V

    .line 187
    .end local v1    # "tracker":Lcom/facebook/ProfileTracker;
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    .line 184
    .local v0, "profile":Lcom/facebook/Profile;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v2, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/facebook/Profile;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity$4;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
