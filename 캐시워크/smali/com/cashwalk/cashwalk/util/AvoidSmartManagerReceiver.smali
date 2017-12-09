.class public Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AvoidSmartManagerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver$1;-><init>(Lcom/cashwalk/cashwalk/util/AvoidSmartManagerReceiver;Landroid/content/Context;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xbb8

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
.end method
