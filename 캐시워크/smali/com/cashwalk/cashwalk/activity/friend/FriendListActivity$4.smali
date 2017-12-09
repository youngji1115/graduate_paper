.class Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->onItemCancelRequest(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;Lcom/cashwalk/cashwalk/util/network/model/Friend;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iput p3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$postion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 257
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 258
    return-void
.end method
