.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$4;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashWalkMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity;->uploadSteps(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$4;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 542
    const/4 v0, 0x0

    sput v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->stepDiff:I

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;->lastMillis:J

    .line 544
    return-void
.end method
