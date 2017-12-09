.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->addFriend(Ljava/lang/String;)V
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
    .line 557
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v7, 0x7f090141

    const/4 v6, 0x0

    .line 561
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 562
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 563
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 564
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v5, 0x7f09015a

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 566
    const/4 v3, 0x0

    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 567
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/widget/Button;

    move-result-object v3

    const-string/jumbo v4, "\uce5c\uad6c\uc694\uccad\ub428"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;I)I

    .line 582
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local v2    # "result":Z
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 579
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4, v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 573
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 575
    .local v1, "error":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xcd

    if-ne v3, v4, :cond_0

    .line 576
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
