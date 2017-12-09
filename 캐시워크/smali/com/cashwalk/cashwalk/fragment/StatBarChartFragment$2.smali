.class Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;
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
    .line 177
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;IZ)V

    .line 181
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StatBarChartFragment;ILorg/joda/time/DateTime;)V

    .line 182
    return-void
.end method
