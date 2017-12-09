.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;
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
    .line 117
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 122
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 124
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1, v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Z)Z

    .line 127
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    .line 128
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getDayOfWeek()I

    move-result v0

    .line 129
    .local v0, "days":I
    if-ne v0, v4, :cond_1

    .line 130
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    const-string/jumbo v3, "yyyy.MM.dd (E)"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v0    # "days":I
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v0    # "days":I
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    const-string/jumbo v4, "yyyy.MM.dd"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    const v4, 0x7f09022e

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
