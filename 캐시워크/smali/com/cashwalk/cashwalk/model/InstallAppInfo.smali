.class public Lcom/cashwalk/cashwalk/model/InstallAppInfo;
.super Ljava/lang/Object;
.source "InstallAppInfo.java"


# instance fields
.field public appPackage:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isEnabled:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/cashwalk/cashwalk/model/InstallAppInfo;->isEnabled:I

    return-void
.end method
