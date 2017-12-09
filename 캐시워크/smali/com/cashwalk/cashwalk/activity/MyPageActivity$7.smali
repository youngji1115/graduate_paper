.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/MyPageActivity;->uploadSteps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 337
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    .line 340
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/MyPageActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/MyPageActivity;->access$200(Lcom/cashwalk/cashwalk/activity/MyPageActivity;)V

    .line 341
    return-void
.end method
