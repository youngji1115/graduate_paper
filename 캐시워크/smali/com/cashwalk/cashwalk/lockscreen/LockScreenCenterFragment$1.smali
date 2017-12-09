.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_SHOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v1, "com.cashwalk.cashwalk.action.LOCKSCREEN_COINBOX_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V

    goto :goto_0
.end method
