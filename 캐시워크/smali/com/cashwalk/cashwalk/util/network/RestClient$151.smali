.class final Lcom/cashwalk/cashwalk/util/network/RestClient$151;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/network/RestClient;->setCashBandSleepData(Lcom/cashwalk/cashwalk/model/BandSleepGraph;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V
    .locals 0

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$151;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$151;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;->handleResponse(Lorg/json/JSONObject;)V

    .line 2248
    return-void
.end method
