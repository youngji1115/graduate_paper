.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initDrawer()V
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
    .line 310
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 314
    .local v0, "scrollX":I
    if-nez v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 322
    :cond_0
    :goto_0
    return v3

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
