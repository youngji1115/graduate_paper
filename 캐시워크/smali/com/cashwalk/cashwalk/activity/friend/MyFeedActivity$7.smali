.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFriendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 521
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseFriendList(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v1

    .line 523
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    sput-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 524
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 528
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
