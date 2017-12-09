.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initDrawer()V
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
    .line 293
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

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

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 297
    .local v0, "scrollX":I
    if-nez v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 305
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0
.end method
