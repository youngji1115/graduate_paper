.class Lcom/esafirm/imagepicker/features/ImagePickerActivity$3;
.super Ljava/lang/Object;
.source "ImagePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerActivity;->requestWriteExternalPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$3;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$3;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$400(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    .line 337
    return-void
.end method
