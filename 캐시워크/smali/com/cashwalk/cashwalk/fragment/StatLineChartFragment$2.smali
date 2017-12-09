.class Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;
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
    .line 150
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;IZ)V

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StatLineChartFragment;->refreshData(Lorg/joda/time/DateTime;)V

    .line 155
    return-void
.end method
