.class Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;
.super Ljava/lang/Object;
.source "SignupWeightFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    const v2, 0x7f090292

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    .line 73
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "IS_LOGIN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;->showInvite(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupWeightFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;->register(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    goto :goto_0
.end method
