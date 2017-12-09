.class final Lcom/cashwalk/cashwalk/util/ShareManager$1;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/ShareManager;->postFacebookFeed(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ShareManager$1;->val$mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 0
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 55
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/ShareManager$1;->val$mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\ub4f1\ub85d \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/util/ShareManager$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
