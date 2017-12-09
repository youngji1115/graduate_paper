.class Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;
.super Landroid/os/AsyncTask;
.source "AppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->writeAppToDB(Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$info:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/AppDialog;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$info:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 97
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->checkAppDir()Z

    .line 98
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cashwalk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cashwalk.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/mapdb/DBMaker;->newFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    .line 102
    .local v0, "db":Lorg/mapdb/DB;
    const-string v2, "db_table_applist"

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v1

    .line 104
    .local v1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Lorg/mapdb/DB;->commit()V

    .line 107
    invoke-virtual {v0}, Lorg/mapdb/DB;->close()V

    .line 109
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/AppDialog$3;->this$0:Lcom/cashwalk/cashwalk/lockscreen/AppDialog;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/lockscreen/AppDialog;->dismiss()V

    .line 112
    const/4 v2, 0x0

    return-object v2
.end method
