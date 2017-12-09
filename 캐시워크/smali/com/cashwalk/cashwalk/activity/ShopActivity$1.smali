.class Lcom/cashwalk/cashwalk/activity/ShopActivity$1;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 86
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ServiceCallback;->onError(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    return-void
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    check-cast p2, [I

    .end local p2    # "result":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [I

    .line 91
    .local v0, "getPointInfo":[I
    aget v1, v0, v5

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$000(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->access$100(Lcom/cashwalk/cashwalk/activity/ShopActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/ShopActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/ShopActivity;

    const v3, 0x7f090234

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/ShopActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aget v4, v0, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
