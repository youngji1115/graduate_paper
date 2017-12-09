.class Lcom/cashwalk/cashwalk/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SplashActivity;->getUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/SplashActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    sget-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const-class v4, Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    const v2, 0x7f050014

    const v3, 0x7f050015

    invoke-virtual {v1, v2, v3}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->overridePendingTransition(II)V

    .line 103
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->finish()V

    .line 250
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v1, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2;)V

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/network/RestClient;->getUser(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 248
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method
