.class Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;
.super Landroid/os/Handler;
.source "WallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->uploadProfileBg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 120
    const-string v4, "filename"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "fn":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_BACKGROUND_ID"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->access$200(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LOCKSCREEN_BACKGROUND_PATH"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    new-instance v3, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 126
    .local v3, "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    iput-object v1, v3, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### uploadProfileBg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;)V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v2

    .line 142
    .local v2, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity$2;->this$0:Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 145
    .end local v1    # "fn":Ljava/lang/String;
    .end local v2    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v3    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    :cond_0
    return-void
.end method
