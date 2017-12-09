.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v6, 0x7f090141

    const/4 v5, 0x0

    .line 605
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 607
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 609
    const/4 v2, 0x0

    sput-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 610
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/widget/Button;

    move-result-object v2

    const-string/jumbo v3, "\uce5c\uad6c\uc694\uccad"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;I)I

    .line 619
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 613
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
