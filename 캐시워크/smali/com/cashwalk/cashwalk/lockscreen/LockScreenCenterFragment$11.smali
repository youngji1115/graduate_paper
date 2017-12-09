.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;
.super Ljava/lang/Object;
.source "LockScreenCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->showCoinBox(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    iput-boolean p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f0201a7

    const v5, 0x7f0200e0

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 802
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->val$show:Z

    if-eqz v0, :cond_6

    .line 803
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v0

    if-lez v0, :cond_4

    .line 804
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_3

    .line 806
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :goto_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 816
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$900(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "USER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 818
    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    .line 820
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cashwalk.cashwalk.action.LOCKSCREEN_NEWS_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 821
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 822
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 824
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 835
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$300(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 837
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 866
    :cond_2
    :goto_2
    return-void

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "10000"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 811
    :cond_4
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 825
    :cond_5
    sget-boolean v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->isTutorialFinished:Z

    if-nez v0, :cond_0

    .line 826
    sput-boolean v4, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    .line 827
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 828
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 830
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 841
    :cond_6
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$1100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    sput-boolean v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->isCoinBoxShow:Z

    .line 844
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 845
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 847
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 853
    :goto_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;)V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2602(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 864
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2500(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2600(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 850
    :cond_7
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment$11;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;->access$2502(Lcom/cashwalk/cashwalk/lockscreen/LockScreenCenterFragment;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_3
.end method
