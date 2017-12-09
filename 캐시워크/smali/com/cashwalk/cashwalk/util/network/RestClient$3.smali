.class final Lcom/cashwalk/cashwalk/util/network/RestClient$3;
.super Ljava/lang/Object;
.source "RestClient.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/network/RestClient;->createUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$3;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/util/network/RestClient$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/RestClient$3;->val$handler:Lcom/cashwalk/cashwalk/util/network/ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;->handleResponse(Lorg/json/JSONObject;)V

    .line 114
    return-void
.end method
