.class Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/kakao/auth/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/activity/LoginActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/activity/LoginActivity$1;

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V

    return-void
.end method

.method private requestMe()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$600(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    new-instance v0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;-><init>(Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;)V

    invoke-static {v0}, Lcom/kakao/usermgmt/UserManagement;->requestMe(Lcom/kakao/usermgmt/callback/MeResponseCallback;)V

    .line 564
    return-void
.end method


# virtual methods
.method public onSessionOpenFailed(Lcom/kakao/util/exception/KakaoException;)V
    .locals 0
    .param p1, "exception"    # Lcom/kakao/util/exception/KakaoException;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    .line 530
    invoke-static {p1}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    .line 532
    :cond_0
    return-void
.end method

.method public onSessionOpened()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->requestMe()V

    .line 525
    return-void
.end method
