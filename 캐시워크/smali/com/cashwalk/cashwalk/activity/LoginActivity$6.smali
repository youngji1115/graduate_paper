.class Lcom/cashwalk/cashwalk/activity/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity;->justGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LoginActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 211
    .local v1, "tMgr":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 213
    .local v0, "pNum":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 219
    .local v2, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "IS_LOGIN"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3, v2}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 229
    return-void

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    goto :goto_0
.end method
