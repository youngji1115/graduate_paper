.class Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;
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
    .line 200
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 203
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 205
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->weekOfWeekyear()Lorg/joda/time/DateTime$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime$Property;->get()I

    move-result v1

    .line 206
    .local v1, "nowWeek":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime;->weekOfWeekyear()Lorg/joda/time/DateTime$Property;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DateTime$Property;->get()I

    move-result v2

    .line 208
    .local v2, "selectWeek":I
    if-le v1, v2, :cond_0

    .line 209
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$102(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 210
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-virtual {v6, v8}, Lorg/joda/time/DateTime;->plusWeeks(I)Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    .line 220
    .end local v1    # "nowWeek":I
    .end local v2    # "selectWeek":I
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 213
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    .line 214
    .local v0, "nowDate":Lorg/joda/time/DateTime;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v3

    .line 215
    .local v3, "tempDateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/joda/time/DateTime;->plusMonths(I)Lorg/joda/time/DateTime;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$302(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;Lorg/joda/time/DateTime;)Lorg/joda/time/DateTime;

    .line 217
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    goto :goto_0
.end method
