.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;
.super Ljava/lang/Object;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->initLayout()V
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
    .line 190
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, "frindList":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    :goto_0
    return-void

    .line 197
    .end local v0    # "frindList":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .restart local v0    # "frindList":Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$600(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
