.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;
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
    .line 229
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$000(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "steps"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 238
    .local v0, "steps":I
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$100(Lcom/cashwalk/cashwalk/activity/MyPageActivity;I)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$200(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    goto :goto_0
.end method
