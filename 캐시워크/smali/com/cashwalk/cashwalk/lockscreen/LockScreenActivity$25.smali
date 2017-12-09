.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;
.super Landroid/os/AsyncTask;
.source "LockScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->refreshAppListFromDB()V
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
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 797
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 801
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->checkAppDir()Z

    .line 802
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cashwalk/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cashwalk.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/mapdb/DBMaker;->newFileDB(Ljava/io/File;)Lorg/mapdb/DBMaker;

    move-result-object v5

    .line 803
    invoke-virtual {v5}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v5

    .line 804
    invoke-virtual {v5}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    .line 806
    .local v0, "db":Lorg/mapdb/DB;
    const-string v5, "db_table_applist"

    invoke-virtual {v0, v5}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v3

    .line 808
    .local v3, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 809
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 810
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 811
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 812
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;

    new-instance v6, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25$1;

    invoke-direct {v6, p0, v1, v4}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity$25;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 820
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/mapdb/DB;->close()V

    .line 822
    const/4 v5, 0x0

    return-object v5
.end method
