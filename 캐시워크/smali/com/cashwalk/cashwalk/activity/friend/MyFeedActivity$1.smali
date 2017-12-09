.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;
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
    .line 168
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .line 172
    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$200(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$400(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
