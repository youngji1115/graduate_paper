.class Lcom/cashwalk/cashwalk/activity/LottoActivity$3;
.super Ljava/lang/Object;
.source "LottoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 238
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->startActivity(Landroid/content/Intent;)V

    .line 242
    return-void
.end method
