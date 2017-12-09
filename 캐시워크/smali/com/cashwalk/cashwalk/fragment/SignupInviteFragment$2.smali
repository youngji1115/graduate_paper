.class Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;
.super Ljava/lang/Object;
.source "SignupInviteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->friendCode:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupInviteFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;->register(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 77
    return-void
.end method
