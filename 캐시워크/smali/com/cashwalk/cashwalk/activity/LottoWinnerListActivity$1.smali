.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 108
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
