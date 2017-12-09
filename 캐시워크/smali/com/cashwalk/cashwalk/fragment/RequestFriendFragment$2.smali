.class Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$2;
.super Ljava/lang/Object;
.source "RequestFriendFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->onItemDelete(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 184
    return-void
.end method
