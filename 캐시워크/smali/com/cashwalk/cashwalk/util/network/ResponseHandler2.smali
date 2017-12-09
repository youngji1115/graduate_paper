.class public abstract Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;
.super Ljava/lang/Object;
.source "ResponseHandler2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract handleError(Ljava/lang/String;)V
.end method

.method public abstract handleResponse(Lorg/json/JSONObject;)V
.end method
