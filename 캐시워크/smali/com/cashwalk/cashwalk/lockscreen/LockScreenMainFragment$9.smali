.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$9;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->initView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$9;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/support/v7/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 515
    return-void
.end method
