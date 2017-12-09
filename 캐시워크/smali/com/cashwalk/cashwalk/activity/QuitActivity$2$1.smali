.class Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "QuitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/QuitActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/QuitActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/QuitActivity$2;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/QuitActivity$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/QuitActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$200(Lcom/cashwalk/cashwalk/activity/QuitActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/QuitActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/QuitActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/QuitActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/QuitActivity;->access$400(Lcom/cashwalk/cashwalk/activity/QuitActivity;)V

    .line 78
    return-void
.end method
