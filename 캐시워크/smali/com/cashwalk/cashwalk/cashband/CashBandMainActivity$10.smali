.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$10;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "CashBandMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->saveBandAuthInServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$10;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 721
    return-void
.end method
