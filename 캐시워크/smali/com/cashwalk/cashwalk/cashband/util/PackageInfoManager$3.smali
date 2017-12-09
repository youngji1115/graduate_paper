.class Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;
.super Landroid/os/AsyncTask;
.source "PackageInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getCallApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

.field final synthetic val$listener:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->val$listener:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->access$000(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 274
    .local v7, "pkgm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.DIAL"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v6, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "AppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 282
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 283
    .local v2, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v9, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 284
    iget-object v9, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-static {v9}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->access$000(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 285
    const/4 v9, 0x1

    iput v9, v2, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 286
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :catch_0
    move-exception v4

    .line 289
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "installAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$3;->val$listener:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;->onResult(Ljava/util/ArrayList;)V

    .line 300
    return-void
.end method
