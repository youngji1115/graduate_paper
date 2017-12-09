.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;
.super Ljava/lang/Object;
.source "MyFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method
