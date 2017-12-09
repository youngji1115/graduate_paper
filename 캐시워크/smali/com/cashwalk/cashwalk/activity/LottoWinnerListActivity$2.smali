.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$002(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;I)I

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->refresh(Z)V

    .line 120
    return-void
.end method
