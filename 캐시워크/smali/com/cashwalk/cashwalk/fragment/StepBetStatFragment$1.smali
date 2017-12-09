.class Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetStatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StepBetStatFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
