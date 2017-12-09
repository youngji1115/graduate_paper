.class public Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MyFirebaseInstanceIDService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFirebaseIIDService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v2, "sendRegistrationToServer"

    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 30
    .local v1, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    iput-object p1, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->pushID:Ljava/lang/String;

    .line 31
    new-instance v2, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;

    invoke-direct {v2, p0, p1}, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;-><init>(Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 45
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 46
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "token":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V

    .line 24
    return-void
.end method
