.class Lcom/cashwalk/cashwalk/MainActivity$26;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->setWinnerBanner(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;

.field final synthetic val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

.field final synthetic val$winnerUserList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/MainActivity$26;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$26;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    new-instance v1, Lcom/cashwalk/cashwalk/MainActivity$26$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/MainActivity$26$1;-><init>(Lcom/cashwalk/cashwalk/MainActivity$26;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1479
    return-void
.end method
