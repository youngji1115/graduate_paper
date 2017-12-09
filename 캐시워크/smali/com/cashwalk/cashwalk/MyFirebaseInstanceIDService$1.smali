.class Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFirebaseInstanceIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;->sendRegistrationToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;->this$0:Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, "res":Lorg/json/JSONObject;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;->this$0:Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PUSH_ID"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/MyFirebaseInstanceIDService$1;->val$token:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "res":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
