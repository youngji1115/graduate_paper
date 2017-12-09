.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/tnkfactory/ad/ServiceCallback;->onError(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 134
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    return-void
.end method

.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    check-cast p2, [I

    .end local p2    # "result":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [I

    .line 119
    .local v0, "getPointInfo":[I
    aget v1, v0, v3

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->setTnkCashInfo(Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mTnkAdListFragment:Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;

    invoke-virtual {v1, v3}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->setAdList(Z)V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->access$000(Lcom/cashwalk/cashwalk/activity/TnkAdActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/TnkAdActivity;

    aget v2, v0, v4

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->numberFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/TnkAdActivity;->setTnkCashInfo(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->mTnkAdListFragment:Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;

    invoke-virtual {v1, v4}, Lcom/cashwalk/cashwalk/fragment/TnkAdListFragment;->setAdList(Z)V

    goto :goto_0
.end method
