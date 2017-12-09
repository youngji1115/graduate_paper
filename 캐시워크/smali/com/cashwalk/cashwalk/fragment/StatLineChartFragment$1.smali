.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;
.super Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;
.source "StatLineChartFragment.java"


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
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-direct {p0, p2}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onSwipeLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 138
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 139
    .local v0, "nowDate":Lorg/joda/time/DateTime;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 140
    .local v1, "tempDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/joda/time/DateTime;->plusDays(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 142
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onSwipeRight()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/joda/time/DateTime;->minusDays(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 135
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    .line 136
    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
