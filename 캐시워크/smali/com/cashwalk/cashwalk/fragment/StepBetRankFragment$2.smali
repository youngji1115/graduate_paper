.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;
.super Ljava/lang/Object;
.source "StepBetRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 104
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 106
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0, v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Z)Z

    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    .line 112
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v2, "yyyy.MM.dd (E)"

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void
.end method
