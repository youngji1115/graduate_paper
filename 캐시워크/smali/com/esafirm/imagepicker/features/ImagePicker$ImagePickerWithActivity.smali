.class public Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;
.super Lcom/esafirm/imagepicker/features/ImagePicker;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esafirm/imagepicker/features/ImagePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePickerWithActivity"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePicker;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->activity:Landroid/app/Activity;

    .line 41
    invoke-virtual {p0, p1}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method
