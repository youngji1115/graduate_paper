.class public Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;
.super Landroid/app/Dialog;
.source "KakaoNotiDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 23
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->requestWindowFeature(I)Z

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 25
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 27
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 29
    const v1, 0x7f04007c

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->setContentView(I)V

    .line 30
    const v1, 0x7f10035e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog$1;-><init>(Lcom/cashwalk/cashwalk/cashband/dialog/KakaoNotiDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
