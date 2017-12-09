.class Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;
.super Ljava/lang/Object;
.source "StepBetIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->id:Ljava/lang/String;

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->participateStepBet(Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 130
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 131
    return-void
.end method
