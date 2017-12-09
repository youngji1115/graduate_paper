.class public Lcom/cashwalk/cashwalk/cashband/BandHowToUseActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandHowToUseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandHowToUseActivity;->setContentView(I)V

    .line 19
    return-void
.end method
