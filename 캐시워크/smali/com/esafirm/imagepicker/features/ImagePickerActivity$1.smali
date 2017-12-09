.class Lcom/esafirm/imagepicker/features/ImagePickerActivity$1;
.super Ljava/lang/Object;
.source "ImagePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setupView(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
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
    .line 123
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$1;->this$0:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->access$000(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)Lcom/esafirm/imagepicker/view/SnackBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/view/SnackBarView;->hide()V

    .line 127
    return-void
.end method
