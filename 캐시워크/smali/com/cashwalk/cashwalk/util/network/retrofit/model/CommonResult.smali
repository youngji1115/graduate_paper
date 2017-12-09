.class public Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;
.super Ljava/lang/Object;
.source "CommonResult.java"


# instance fields
.field private result:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;->result:Z

    return-void
.end method


# virtual methods
.method public isResult()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;->result:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/CommonResult;->result:Z

    .line 20
    return-void
.end method
