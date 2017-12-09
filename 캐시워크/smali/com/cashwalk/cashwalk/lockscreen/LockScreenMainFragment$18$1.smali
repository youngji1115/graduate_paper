.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0xa

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string/jumbo v2, "tutorial_complete"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    .line 744
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0201d1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 746
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v2

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v3

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v4

    const/16 v5, 0x12

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 747
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 748
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LOCKSCREEN_TUTORIAL_STAGE"

    const-string v3, "LOCKSCREEN_TUTORIAL_STAGE_FINISHED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 751
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$700(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 753
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 757
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/support/v7/widget/PopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 758
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f110001

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$18;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/support/v7/widget/PopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 759
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
