.class Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;
.super Landroid/os/AsyncTask;
.source "PackageInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getNotiEnabledApps(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
    .line 51
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->val$listener:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/model/InstallAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-static {v15}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->access$000(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 58
    .local v14, "pkgm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v10, "intent":Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "AppInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v15}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getDefaultApps()Ljava/util/ArrayList;

    move-result-object v6

    .line 65
    .local v6, "defaultApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    const/4 v11, 0x0

    .line 66
    .local v11, "isDefultApp":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 69
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 71
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    move-object/from16 v16, v0

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->access$100(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;Ljava/lang/String;)Z

    move-result v12

    .line 73
    .local v12, "isNotiEnabled":Z
    if-eqz v12, :cond_0

    .line 74
    new-instance v3, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 76
    .local v3, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->getAppInfoFromPackage(Ljava/lang/String;)Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    move-result-object v9

    .line 81
    .local v9, "installApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    if-eqz v9, :cond_2

    .line 82
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 83
    .local v5, "defaultApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    iget-object v0, v9, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 84
    const-string v17, "LIST"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "doInBackground: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v11, 0x1

    goto :goto_1

    .line 90
    .end local v5    # "defaultApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_2
    if-nez v11, :cond_3

    .line 91
    if-eqz v9, :cond_4

    .line 93
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    :goto_2
    const/4 v11, 0x0

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v2, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    .line 97
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->access$000(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 99
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v3, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 100
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 108
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .end local v9    # "installApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .end local v12    # "isNotiEnabled":Z
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 113
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 118
    .local p1, "installAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$1;->val$listener:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;->onResult(Ljava/util/ArrayList;)V

    .line 120
    return-void
.end method
