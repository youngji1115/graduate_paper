.class Lcom/cashwalk/cashwalk/activity/MyPageActivity$8$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/MyPageActivity$8$1;->this$1:Lcom/cashwalk/cashwalk/activity/MyPageActivity$8;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 381
    return-void
.end method
