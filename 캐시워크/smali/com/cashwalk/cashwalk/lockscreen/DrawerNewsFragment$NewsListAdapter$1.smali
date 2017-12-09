.class Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;
.super Ljava/lang/Object;
.source "DrawerNewsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/News;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;Lcom/cashwalk/cashwalk/util/network/model/News;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter;->this$0:Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cashwalk.cashwalk.action.LOCKSCREEN_URL_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/DrawerNewsFragment$NewsListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/News;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/News;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    return-void
.end method
