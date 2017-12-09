.class Lcom/cashwalk/cashwalk/activity/LottoActivity$6;
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
    .line 270
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, "startMyFriendList":Landroid/content/Intent;
    const-string v1, "postion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method
