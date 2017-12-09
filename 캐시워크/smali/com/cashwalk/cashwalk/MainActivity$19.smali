.class Lcom/cashwalk/cashwalk/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/util/ad/helper/backpress/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/MainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/MainActivity;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/cashwalk/cashwalk/MainActivity$19;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 765
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$19;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/MainActivity;->finish()V

    .line 755
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/cashwalk/cashwalk/MainActivity$19;->this$0:Lcom/cashwalk/cashwalk/MainActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/MainActivity;->finish()V

    .line 750
    return-void
.end method

.method public onLoaded(I)V
    .locals 0
    .param p1, "adType"    # I

    .prologue
    .line 760
    return-void
.end method

.method public onReviewClick()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method
