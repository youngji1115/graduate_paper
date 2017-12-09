.class Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetStatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2$1;->this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 190
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2$1;->this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "STEPBET_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2$1;->this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$2;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 194
    :cond_0
    return-void
.end method
