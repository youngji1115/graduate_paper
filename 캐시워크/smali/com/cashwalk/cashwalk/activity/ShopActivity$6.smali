.class Lcom/cashwalk/cashwalk/activity/ShopActivity$6;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/ShopActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
