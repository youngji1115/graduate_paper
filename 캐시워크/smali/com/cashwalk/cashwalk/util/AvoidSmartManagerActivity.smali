.class public Lcom/cashwalk/cashwalk/util/AvoidSmartManagerActivity;
.super Landroid/app/Activity;
.source "AvoidSmartManagerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0, v0, v0}, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerActivity;->overridePendingTransition(II)V

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cashwalk/cashwalk/lockscreen/LockScreenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 18
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/AvoidSmartManagerActivity;->finish()V

    .line 19
    return-void
.end method
