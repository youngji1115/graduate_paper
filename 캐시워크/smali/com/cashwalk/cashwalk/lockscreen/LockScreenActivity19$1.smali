.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
