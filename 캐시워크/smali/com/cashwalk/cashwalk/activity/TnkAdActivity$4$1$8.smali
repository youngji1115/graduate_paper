.class Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$8;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "TnkAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;->handleError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1$8;->this$2:Lcom/cashwalk/cashwalk/activity/TnkAdActivity$4$1;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 378
    return-void
.end method
