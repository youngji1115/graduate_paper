.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showNews(Lcom/cashwalk/cashwalk/util/network/model/News;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

.field final synthetic val$news:Lcom/cashwalk/cashwalk/util/network/model/News;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;Lcom/cashwalk/cashwalk/util/network/model/News;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;->val$news:Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$10;->val$news:Lcom/cashwalk/cashwalk/util/network/model/News;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/News;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->showWebContent(Ljava/lang/String;)V

    .line 538
    return-void
.end method
