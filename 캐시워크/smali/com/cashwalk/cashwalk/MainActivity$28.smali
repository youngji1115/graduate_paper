.class Lcom/cashwalk/cashwalk/MainActivity$28;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->dayStepUploadCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;

.field final synthetic val$yesterdayString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$28;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MainActivity$28;->val$yesterdayString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1525
    :try_start_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    iget-object v1, p0, Lcom/cashwalk/cashwalk/MainActivity$28;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/MainActivity;->access$3200(Lcom/cashwalk/cashwalk/MainActivity;)Lcom/cashwalk/cashwalk/util/StepsDBHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$28;->val$yesterdayString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/util/StepsDBHelper;->deleteDay(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
