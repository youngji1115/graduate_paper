.class public Lcom/esafirm/imagepicker/features/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCameraAvailability(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 12
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 15
    .local v2, "isAvailable":Z
    :goto_0
    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    .local v0, "appContext":Landroid/content/Context;
    sget v4, Lcom/esafirm/imagepicker/R$string;->ef_error_no_camera:I

    .line 18
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 20
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_0
    return v2

    .line 13
    .end local v2    # "isAvailable":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
