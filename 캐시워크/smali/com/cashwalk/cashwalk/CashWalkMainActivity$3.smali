.class Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;
.super Ljava/lang/Object;
.source "CashWalkMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkMainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->finish()V

    .line 238
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cashwalk/cashwalk/CashWalkMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/CashWalkMainActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/CashWalkMainActivity;->finish()V

    .line 233
    return-void
.end method

.method public onLoaded(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onReviewClick()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method
