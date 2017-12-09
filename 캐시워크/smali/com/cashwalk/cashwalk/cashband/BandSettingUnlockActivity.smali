.class public Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandSettingUnlockActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
