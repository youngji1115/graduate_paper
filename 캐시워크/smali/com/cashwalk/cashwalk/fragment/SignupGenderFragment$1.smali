.class Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$1;
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
    .line 79
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/SignupGenderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/activity/SignupActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/SignupActivity;->showDatePicker()V

    .line 113
    return-void
.end method
