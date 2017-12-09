.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field final synthetic val$tabsLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->val$tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 725
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 699
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x7f0f0020

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->val$tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 704
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->val$tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 705
    .local v1, "tv":Landroid/widget/TextView;
    if-ne v0, p1, :cond_0

    .line 706
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 703
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 712
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    if-nez p1, :cond_3

    .line 713
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    if-nez v2, :cond_2

    .line 714
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 720
    :cond_2
    :goto_2
    return-void

    .line 717
    :cond_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$19;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_2
.end method
