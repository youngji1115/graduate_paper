.class Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SAVE_PLAYER_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1$3;->this$2:Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/SplashActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/SplashActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/SplashActivity;->access$000(Lcom/cashwalk/cashwalk/activity/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SAVE_PHONE_NUMBER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    sput-boolean v2, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    .line 157
    return-void
.end method
