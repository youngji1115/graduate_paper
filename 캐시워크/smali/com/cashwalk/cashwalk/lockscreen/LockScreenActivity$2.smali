.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->initPager()V
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
    .line 185
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 227
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/16 v1, 0x8

    .line 201
    if-nez p1, :cond_0

    .line 202
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->access$302(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;Z)Z

    .line 218
    return-void
.end method
