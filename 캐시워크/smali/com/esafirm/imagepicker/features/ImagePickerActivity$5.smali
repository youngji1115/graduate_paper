.class Lcom/esafirm/imagepicker/features/ImagePickerActivity$5;
.super Landroid/database/ContentObserver;
.source "ImagePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$5;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$5;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$500(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 514
    return-void
.end method
