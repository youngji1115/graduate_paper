.class Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;
.super Ljava/lang/Object;
.source "StepBetStatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

.field final synthetic val$retryPopint:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iput p2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->val$retryPopint:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "STEPBET_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->val$retryPopint:I

    const/4 v3, 0x1

    new-instance v4, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1$1;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;)V

    invoke-static {v1, v2, v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->stepBetRetry(Ljava/lang/String;IZLcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 180
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 181
    return-void
.end method
