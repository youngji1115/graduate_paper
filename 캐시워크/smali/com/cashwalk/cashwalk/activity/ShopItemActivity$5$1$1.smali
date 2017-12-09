.class Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$1;
.super Landroid/os/Handler;
.source "ShopItemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1$1;->this$2:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5$1;->this$1:Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/ShopItemActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/ShopItemActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/ShopItemActivity;->finish()V

    .line 213
    return-void
.end method
