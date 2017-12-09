.class final Lcom/cashwalk/cashwalk/util/network/RestClient$32;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/network/RestClient;->purchaseShopItem(Lcom/cashwalk/cashwalk/util/network/model/ShopItem;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
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
    .line 561
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$32;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "purchaseShopItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$32;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;->handleResponse(Lorg/json/JSONObject;)V

    .line 568
    return-void
.end method
