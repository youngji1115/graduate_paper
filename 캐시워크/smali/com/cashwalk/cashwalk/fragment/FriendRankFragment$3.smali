.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "startMyFriendList":Landroid/content/Intent;
    const-string v1, "postion"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, "ref"

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_CONTACTS_CONNECT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    const-string/jumbo v1, "type"

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 157
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const-string/jumbo v1, "type"

    const-string v2, "facebook"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
