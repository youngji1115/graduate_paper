.class Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetStatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1$1;->this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 175
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1$1;->this$2:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$800(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V

    .line 178
    :cond_0
    return-void
.end method
