.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;
.super Ljava/lang/Object;
.source "RecommendFriendFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iput p3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$postion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 406
    const-string v1, ""

    .line 407
    .local v1, "friendId":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .line 412
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### \uc0ad\uc81c => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 413
    new-instance v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;)V

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 435
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 438
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "friend_r_cancel"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_1
    return-void

    .line 409
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 410
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    goto :goto_0

    .line 439
    .restart local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
