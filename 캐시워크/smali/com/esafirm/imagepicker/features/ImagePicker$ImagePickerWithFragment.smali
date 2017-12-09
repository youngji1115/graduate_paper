.class public Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;
.super Lcom/esafirm/imagepicker/features/ImagePicker;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/features/ImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePickerWithFragment"
.end annotation


# instance fields
.field private fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePicker;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method
