.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;
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
    .line 479
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "USER_ID"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "NICKNAME"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;)V

    invoke-static {v3, v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->participateStepBet(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 512
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 517
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const-class v4, Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$12;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const v2, 0x7f050019

    const v3, 0x7f050017

    invoke-virtual {v1, v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
