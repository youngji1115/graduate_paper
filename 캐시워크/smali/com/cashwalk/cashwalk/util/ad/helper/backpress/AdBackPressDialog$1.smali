.class Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$1;
.super Ljava/lang/Object;
.source "AdBackPressDialog.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/ad/helper/nativead/OnNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog$1;->this$0:Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(I)V
    .locals 1
    .param p1, "adType"    # I

    .prologue
    .line 135
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;->onAdClicked(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;->onError(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method

.method public onLoaded(I)V
    .locals 1
    .param p1, "adType"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/AdBackPressDialog;->access$000()Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;->onLoaded(I)V

    .line 131
    :cond_0
    return-void
.end method
