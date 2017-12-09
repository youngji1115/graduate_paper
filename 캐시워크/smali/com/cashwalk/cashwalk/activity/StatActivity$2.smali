.class Lcom/cashwalk/cashwalk/activity/StatActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StatActivity;->uploadSteps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StatActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StatActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StatActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StatActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StatActivity;)V

    .line 216
    return-void
.end method
