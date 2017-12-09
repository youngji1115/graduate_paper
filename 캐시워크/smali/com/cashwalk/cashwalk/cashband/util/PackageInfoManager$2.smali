.class Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$2;
.super Ljava/lang/Object;
.source "PackageInfoManager.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->setDefaultApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$2;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 223
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    .line 224
    .local v0, "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    new-instance v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/model/InstallAppInfo;-><init>()V

    .line 225
    .local v1, "callApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    const-string/jumbo v3, "\uc804\ud654"

    iput-object v3, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->name:Ljava/lang/String;

    .line 226
    iget-object v3, v0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    iput-object v3, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->appPackage:Ljava/lang/String;

    .line 227
    const/4 v3, 0x1

    iput v3, v1, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    .line 228
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$2;->this$0:Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;

    invoke-virtual {v3, v1}, Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager;->insertDBApp(Lcom/cashwalk/cashwalk/model/InstallAppInfo;)V

    goto :goto_0

    .line 230
    .end local v0    # "app":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    .end local v1    # "callApp":Lcom/cashwalk/cashwalk/model/InstallAppInfo;
    :cond_0
    return-void
.end method
