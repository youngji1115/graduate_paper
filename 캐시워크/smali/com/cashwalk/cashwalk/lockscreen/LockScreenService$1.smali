.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->uploadStepsReal(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService$1;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 406
    if-eqz p1, :cond_0

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    .line 410
    :cond_0
    return-void
.end method
