.class public Lcom/esafirm/imagepicker/helper/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeConfigFromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/esafirm/imagepicker/features/ImagePickerConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 24
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "config":Lcom/esafirm/imagepicker/features/ImagePickerConfig;
    const-string v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setMode(I)V

    .line 26
    const-string v1, "limit"

    const/16 v2, 0x63

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setLimit(I)V

    .line 27
    const-string v1, "showCamera"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setShowCamera(Z)V

    .line 28
    const-string v1, "folderTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setFolderTitle(Ljava/lang/String;)V

    .line 29
    const-string v1, "imageTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setImageTitle(Ljava/lang/String;)V

    .line 30
    const-string v1, "selectedImages"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setSelectedImages(Ljava/util/ArrayList;)V

    .line 31
    const-string v1, "folderMode"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setFolderMode(Z)V

    .line 32
    const-string v1, "imageDirectory"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setImageDirectory(Ljava/lang/String;)V

    .line 33
    const-string v1, "returnAfterFirst"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setReturnAfterFirst(Z)V

    .line 34
    return-object v0
.end method
