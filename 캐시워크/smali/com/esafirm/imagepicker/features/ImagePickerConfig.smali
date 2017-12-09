.class public Lcom/esafirm/imagepicker/features/ImagePickerConfig;
.super Ljava/lang/Object;
.source "ImagePickerConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/esafirm/imagepicker/features/ImagePickerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private folderMode:Z

.field private folderTitle:Ljava/lang/String;

.field private imageDirectory:Ljava/lang/String;

.field private imageTitle:Ljava/lang/String;

.field private limit:I

.field private mode:I

.field private returnAfterFirst:Z

.field private selectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private showCamera:Z

.field private theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerConfig$1;

    invoke-direct {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig$1;-><init>()V

    sput-object v0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->mode:I

    .line 31
    const/16 v0, 0x63

    iput v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->limit:I

    .line 32
    iput-boolean v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->showCamera:Z

    .line 33
    sget v0, Lcom/esafirm/imagepicker/R$string;->ef_title_folder:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderTitle:Ljava/lang/String;

    .line 34
    sget v0, Lcom/esafirm/imagepicker/R$string;->ef_title_select_image:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageTitle:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->selectedImages:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderMode:Z

    .line 37
    sget v0, Lcom/esafirm/imagepicker/R$string;->ef_image_directory:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageDirectory:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->returnAfterFirst:Z

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Lcom/esafirm/imagepicker/model/Image;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->selectedImages:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderTitle:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageTitle:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageDirectory:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->mode:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->limit:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->theme:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderMode:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->showCamera:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->returnAfterFirst:Z

    .line 155
    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v0, v2

    .line 153
    goto :goto_1

    :cond_2
    move v1, v2

    .line 154
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->limit:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->mode:I

    return v0
.end method

.method public getSelectedImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->selectedImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->theme:I

    return v0
.end method

.method public isFolderMode()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderMode:Z

    return v0
.end method

.method public isReturnAfterFirst()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->returnAfterFirst:Z

    return v0
.end method

.method public isShowCamera()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->showCamera:Z

    return v0
.end method

.method public setFolderMode(Z)V
    .locals 0
    .param p1, "folderMode"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderMode:Z

    .line 103
    return-void
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderTitle"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderTitle:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setImageDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageDirectory"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageDirectory:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setImageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageTitle"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageTitle:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->limit:I

    .line 63
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->mode:I

    .line 55
    return-void
.end method

.method public setReturnAfterFirst(Z)V
    .locals 0
    .param p1, "returnAfterFirst"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->returnAfterFirst:Z

    .line 47
    return-void
.end method

.method public setSelectedImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "selectedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->selectedImages:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public setShowCamera(Z)V
    .locals 0
    .param p1, "showCamera"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->showCamera:Z

    .line 71
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 114
    iput p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->theme:I

    .line 115
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->selectedImages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->imageDirectory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->limit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->folderMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->showCamera:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->returnAfterFirst:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 139
    goto :goto_0

    :cond_1
    move v0, v2

    .line 140
    goto :goto_1

    :cond_2
    move v1, v2

    .line 141
    goto :goto_2
.end method
