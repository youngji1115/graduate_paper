.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
