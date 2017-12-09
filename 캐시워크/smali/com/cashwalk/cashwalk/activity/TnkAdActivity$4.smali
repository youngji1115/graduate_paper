.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->consumePoint(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

.field final synthetic val$pointVal:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->val$pointVal:I

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 291
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "POINT"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 292
    .local v0, "curPoint":I
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->val$pointVal:I

    add-int v1, v0, v3

    .line 294
    .local v1, "newPoint":I
    iget v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->val$pointVal:I

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$300(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "USER_ID"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    invoke-direct {v5, p0, v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;-><init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;I)V

    invoke-static {v3, v7, v7, v4, v5}, Lcom/cashwalk/cashwalk/util/network/RestClient;->updatePoint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 383
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 384
    return-void
.end method
