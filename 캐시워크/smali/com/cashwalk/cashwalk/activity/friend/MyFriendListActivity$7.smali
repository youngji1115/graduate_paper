.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    .line 383
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$802(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;

    .line 384
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$902(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;

    .line 385
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    .line 386
    const/4 v0, 0x1

    return v0
.end method
