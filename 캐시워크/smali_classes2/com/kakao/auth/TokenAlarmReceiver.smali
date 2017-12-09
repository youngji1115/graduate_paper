.class public Lcom/kakao/auth/TokenAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TokenAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isApplicationActive(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 48
    .local v0, "powerManager":Landroid/os/PowerManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 57
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return v1

    .line 51
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 53
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catch_0
    move-exception v1

    .line 57
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/kakao/auth/TokenAlarmReceiver;->isApplicationActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/auth/Session;->checkAccessTokenInfo()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
