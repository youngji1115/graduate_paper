.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;
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
    .line 111
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 116
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v2, "friend_r_fb"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1, v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;Z)Z

    .line 119
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_FACEBOOK_CONNECT"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
