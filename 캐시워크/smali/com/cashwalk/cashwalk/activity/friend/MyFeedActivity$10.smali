.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;
.super Ljava/lang/Object;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->deleteFriend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

.field final synthetic val$friendId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->val$friendId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 601
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->val$friendId:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->deleteFriend(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 621
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 622
    return-void
.end method
