.class Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;
.super Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;
.source "StatBarChartFragment.java"


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
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {p0, p2}, Lcom/cashwalk/cashwalk/util/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSwipeBottom()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onSwipeLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 153
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 155
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->weekOfWeekyear()Lorg/joda/time/DateTime$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime$Property;->get()I

    move-result v1

    .line 156
    .local v1, "nowWeek":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->weekOfWeekyear()Lorg/joda/time/DateTime$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime$Property;->get()I

    move-result v2

    .line 158
    .local v2, "selectWeek":I
    if-le v1, v2, :cond_0

    .line 159
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 160
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    .line 171
    .end local v1    # "nowWeek":I
    .end local v2    # "selectWeek":I
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 164
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 165
    .local v0, "nowDate":Lorg/joda/time/DateTime;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v3

    .line 166
    .local v3, "tempDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 167
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 168
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    goto :goto_0
.end method

.method public onSwipeRight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 144
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->minusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 145
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/joda/time/DateTime;->minusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 149
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    goto :goto_0
.end method

.method public onSwipeTop()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
