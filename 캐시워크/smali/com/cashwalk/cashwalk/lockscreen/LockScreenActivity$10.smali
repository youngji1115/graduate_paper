.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initDrawer()V
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
    .line 445
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const v5, 0x7f050019

    const v4, 0x7f050017

    .line 448
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NICKNAME"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 450
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-virtual {v0, v5, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-virtual {v0, v5, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
