.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/MyPageActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$400(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    const v2, 0x7f09016a

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    return-void
.end method
