.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LockScreenMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->uploadPhoneNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    .line 273
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SAVE_PLAYER_ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment$4;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;->access$000(Lcom/cashwalk/cashwalk/lockscreen/LockScreenMainFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SAVE_PHONE_NUMBER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    sput-boolean v2, Lcom/cashwalk/cashwalk/CashWalkApp;->UPLOAD_MY_PHONE_NUMBER:Z

    .line 276
    return-void
.end method
