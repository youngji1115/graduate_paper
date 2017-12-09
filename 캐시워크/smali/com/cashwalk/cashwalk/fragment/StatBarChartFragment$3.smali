.class Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;
.super Ljava/lang/Object;
.source "StatBarChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 188
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->minusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->minusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 195
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    goto :goto_0
.end method
