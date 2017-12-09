.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;
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
    .line 456
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iput p3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->val$postion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 460
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "friend_r_delete"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    new-instance v4, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;)V

    invoke-static {v2, v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteRecommendFriend(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 500
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$9;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 501
    return-void

    .line 461
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
