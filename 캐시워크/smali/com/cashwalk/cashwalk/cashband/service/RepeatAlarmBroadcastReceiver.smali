.class public Lcom/cashwalk/cashwalk/cashband/service/RepeatAlarmBroadcastReceiver;
.super Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;
.source "RepeatAlarmBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/cashwalk/cashwalk/cashband/service/AlarmBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    const-string v0, "ALARM_TAG"

    const-string v1, "RepeatAlarmBroadcastReceiver - onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/Utils;->isCashWatchUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;

    invoke-direct {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandAlarmUtil;->start()V

    .line 26
    :cond_0
    return-void
.end method
