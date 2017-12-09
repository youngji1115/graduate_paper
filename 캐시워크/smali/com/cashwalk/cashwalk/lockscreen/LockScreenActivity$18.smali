.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initNewsLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$2400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->getScrollX()I

    move-result v0

    .line 669
    .local v0, "scrollX":I
    if-nez v0, :cond_0

    .line 670
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 671
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 674
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
