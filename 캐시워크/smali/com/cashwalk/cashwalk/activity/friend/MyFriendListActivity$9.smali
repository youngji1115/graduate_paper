.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->uploadFriendList(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

.field final synthetic val$totalSize:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->val$totalSize:I

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v7, 0x7f090143

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 695
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 696
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v1

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->val$totalSize:I

    if-ge v1, v2, :cond_1

    .line 698
    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->val$totalSize:I

    invoke-static {v2, v1, v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    .line 702
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 721
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 724
    :cond_2
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 725
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 728
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->clear()V

    goto :goto_0

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->clear()V

    .line 707
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 713
    :cond_4
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/util/ContactsDBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/util/ContactsDBHelper;->clear()V

    .line 714
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 715
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 717
    :cond_5
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
