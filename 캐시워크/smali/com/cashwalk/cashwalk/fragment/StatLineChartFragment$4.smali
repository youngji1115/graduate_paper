.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;
.super Ljava/lang/Object;
.source "StatLineChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 170
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 171
    .local v0, "nowDate":Lorg/joda/time/DateTime;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 172
    .local v1, "tempDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 174
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    .line 177
    :cond_0
    return-void
.end method
