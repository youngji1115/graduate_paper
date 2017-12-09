.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->initLayout()V
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
    .line 215
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    return-void
.end method
