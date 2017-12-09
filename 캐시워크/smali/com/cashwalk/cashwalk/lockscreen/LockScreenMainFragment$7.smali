.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;
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
    .line 416
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->openDrawer()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$7;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->openDrawer()V

    goto :goto_0
.end method
