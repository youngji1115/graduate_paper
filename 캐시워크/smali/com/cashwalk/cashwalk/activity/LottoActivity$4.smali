.class Lcom/cashwalk/cashwalk/activity/LottoActivity$4;
.super Ljava/lang/Object;
.source "LottoActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$502(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)I

    .line 249
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$600(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)V

    .line 250
    return-void
.end method
