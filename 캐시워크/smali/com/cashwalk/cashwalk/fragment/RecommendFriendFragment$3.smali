.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;
.super Ljava/lang/Object;
.source "RecommendFriendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 157
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 158
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "IS_CONTACTS_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 163
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->connectFacebook()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_CONTACTS_CONNECT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    goto :goto_0
.end method
