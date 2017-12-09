.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;
.super Ljava/lang/Object;
.source "LockScreenActivity19.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->initPager()V
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
    .line 186
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 226
    if-nez p1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 230
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->moveTaskToBack(Z)Z

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 234
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "takePictureIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "takePictureIntent":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)Z

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/16 v4, 0x8

    .line 191
    :try_start_0
    const-class v2, Landroid/support/v4/view/ViewPager;

    const-string v3, "mFlingDistance"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 192
    .local v1, "mFlingDistance":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)F

    move-result v2

    sub-float/2addr v2, p2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "mFlingDistance":Ljava/lang/reflect/Field;
    :goto_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2, p2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$102(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;F)F

    .line 204
    if-nez p1, :cond_0

    .line 205
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 196
    .restart local v1    # "mFlingDistance":Ljava/lang/reflect/Field;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/16 v3, 0x320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    .end local v1    # "mFlingDistance":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 211
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$400(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->access$502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Z)Z

    .line 222
    return-void
.end method
