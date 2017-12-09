.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->AddReceiveFriend(Ljava/lang/String;)V
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
    .line 628
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v8, 0x7f090141

    const/4 v7, 0x0

    .line 632
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 633
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 634
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 635
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v6, 0x7f090175

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 637
    const/4 v4, 0x0

    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 638
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/widget/Button;

    move-result-object v4

    const-string/jumbo v5, "\uce5c\uad6c\ub04a\uae30"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;I)I

    .line 671
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 641
    .restart local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 669
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v5, v8}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 643
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 644
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 645
    .local v2, "error":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xcd

    if-eq v4, v5, :cond_0

    .line 646
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_3

    .line 647
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 649
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 657
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_3
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 658
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 659
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11$2;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$11;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
