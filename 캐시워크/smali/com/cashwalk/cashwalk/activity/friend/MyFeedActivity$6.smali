.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;
.super Ljava/lang/Object;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->setProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->val$nickname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 319
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-class v2, Lcom/cashwalk/cashwalk/util/CommonImageView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, "startImagePreview":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->val$nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method
