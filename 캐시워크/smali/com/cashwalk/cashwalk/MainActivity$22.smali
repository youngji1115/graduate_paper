.class Lcom/cashwalk/cashwalk/MainActivity$22;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->sendRegistrationToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$22;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MainActivity$22;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 906
    if-eqz p1, :cond_0

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$22;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/MainActivity;->access$100(Lcom/cashwalk/cashwalk/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PUSH_ID"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/MainActivity$22;->val$token:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 909
    :cond_0
    return-void
.end method
