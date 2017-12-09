.class Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;
.super Ljava/lang/Object;
.source "BandNotiOtherAppActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/PackageInfoManager$OnAppFinderFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->setOtherAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/ArrayList;)V
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
    .line 44
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/model/InstallAppInfo;>;"
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 45
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)V

    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandNotiOtherAppActivity;)Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/cashband/adapter/NotiSettingListAdapter;->setList(Ljava/util/ArrayList;)V

    .line 47
    return-void
.end method
