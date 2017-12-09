.class Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;
.super Ljava/lang/Object;
.source "SignupGenderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    const v2, 0x7f090280

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    const-string v1, "m"

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    .line 146
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/fragment/SignupFragmentListener;->showWeight(Lcom/cashwalk/cashwalk/util/network/model/User;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;)Lcom/cashwalk/cashwalk/util/network/model/User;

    move-result-object v0

    const-string v1, "f"

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    goto :goto_1
.end method
