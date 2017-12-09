.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initNewsLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 682
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->getScrollX()I

    move-result v0

    .line 684
    .local v0, "scrollX":I
    if-nez v0, :cond_0

    .line 685
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 686
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 689
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
