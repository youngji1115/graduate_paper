.class public abstract Lcom/esafirm/imagepicker/features/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;,
        Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;
    }
.end annotation


# static fields
.field public static final EXTRA_FOLDER_MODE:Ljava/lang/String; = "folderMode"

.field public static final EXTRA_FOLDER_TITLE:Ljava/lang/String; = "folderTitle"

.field public static final EXTRA_IMAGE_DIRECTORY:Ljava/lang/String; = "imageDirectory"

.field public static final EXTRA_IMAGE_TITLE:Ljava/lang/String; = "imageTitle"

.field public static final EXTRA_LIMIT:Ljava/lang/String; = "limit"

.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_RETURN_AFTER_FIRST:Ljava/lang/String; = "returnAfterFirst"

.field public static final EXTRA_SELECTED_IMAGES:Ljava/lang/String; = "selectedImages"

.field public static final EXTRA_SHOW_CAMERA:Ljava/lang/String; = "showCamera"

.field public static final MAX_LIMIT:I = 0x63

.field public static final MODE_MULTIPLE:I = 0x2

.field public static final MODE_SINGLE:I = 0x1


# instance fields
.field private config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;

    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static create(Landroid/support/v4/app/Fragment;)Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 80
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;

    invoke-direct {v0, p0}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;-><init>(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public static getImages(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "selectedImages"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public folderMode(Z)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "folderMode"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setFolderMode(Z)V

    .line 129
    return-object p0
.end method

.method public folderTitle(Ljava/lang/String;)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setFolderTitle(Ljava/lang/String;)V

    .line 114
    return-object p0
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method public imageDirectory(Ljava/lang/String;)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setImageDirectory(Ljava/lang/String;)V

    .line 134
    return-object p0
.end method

.method public imageTitle(Ljava/lang/String;)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setImageTitle(Ljava/lang/String;)V

    .line 119
    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-direct {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .line 73
    return-void
.end method

.method public limit(I)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setLimit(I)V

    .line 104
    return-object p0
.end method

.method public multi()Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setMode(I)V

    .line 94
    return-object p0
.end method

.method public origin(Ljava/util/ArrayList;)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)",
            "Lcom/esafirm/imagepicker/features/ImagePicker;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setSelectedImages(Ljava/util/ArrayList;)V

    .line 124
    return-object p0
.end method

.method public returnAfterFirst(Z)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "returnAfterFirst"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setReturnAfterFirst(Z)V

    .line 99
    return-object p0
.end method

.method public showCamera(Z)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setShowCamera(Z)V

    .line 109
    return-object p0
.end method

.method public single()Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setMode(I)V

    .line 89
    return-object p0
.end method

.method public abstract start(I)V
.end method

.method public theme(I)Lcom/esafirm/imagepicker/features/ImagePicker;
    .locals 1
    .param p1, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 138
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePicker;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->setTheme(I)V

    .line 139
    return-object p0
.end method
