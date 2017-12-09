.class Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$3;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->onItemCancelRequest(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 226
    return-void
.end method
