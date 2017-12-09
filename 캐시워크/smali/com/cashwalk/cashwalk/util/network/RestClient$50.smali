.class final Lcom/cashwalk/cashwalk/util/network/RestClient$50;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/network/RestClient;->updatePoint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)Lcom/android/volley/toolbox/JsonObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$50;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$50;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler2;->handleError(Ljava/lang/String;)V

    .line 803
    return-void
.end method
