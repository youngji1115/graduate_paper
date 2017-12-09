.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11$1;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$11;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3000(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    .line 991
    return-void
.end method
