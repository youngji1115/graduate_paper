.class Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;
.super Ljava/lang/Object;
.source "BandSettingUnlockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/BandSettingUnlockActivity;->overridePendingTransition(II)V

    .line 29
    return-void
.end method
