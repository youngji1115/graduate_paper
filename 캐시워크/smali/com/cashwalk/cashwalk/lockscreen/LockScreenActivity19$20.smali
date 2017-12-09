.class Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;
.super Landroid/os/AsyncTask;
.source "LockScreenActivity19.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->removeAppFromDB(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 731
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 735
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->checkAppDir()Z

    .line 736
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

    .line 737
    invoke-virtual {v2}, Lorg/mapdb/DBMaker;->closeOnJvmShutdown()Lorg/mapdb/DBMaker;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Lorg/mapdb/DBMaker;->make()Lorg/mapdb/DB;

    move-result-object v0

    .line 740
    .local v0, "db":Lorg/mapdb/DB;
    const-string v2, "db_table_applist"

    invoke-virtual {v0, v2}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v1

    .line 742
    .local v1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-virtual {v0}, Lorg/mapdb/DB;->commit()V

    .line 745
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;->this$0:Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;

    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20$1;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19$20;)V

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/lockscreen/LockScreenActivity19;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 753
    const/4 v2, 0x0

    return-object v2
.end method
