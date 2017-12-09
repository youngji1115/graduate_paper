.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->uploadSteps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    .line 106
    return-void
.end method
