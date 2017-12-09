.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;
.super Ljava/lang/Object;
.source "LockScreenMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 842
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->shouldUpdate:Z

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=com.cashwalk.cashwalk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 845
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 847
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$200(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 848
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$2100(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 851
    iget-object v1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;->this$1:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$1800(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$20$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    return-void
.end method
