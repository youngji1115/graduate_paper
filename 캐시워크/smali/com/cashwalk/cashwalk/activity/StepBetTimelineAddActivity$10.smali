.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 315
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/esafirm/imagepicker/features/ImagePicker;->create(Landroid/app/Activity;)Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v3}, Lcom/esafirm/imagepicker/features/ImagePicker$ImagePickerWithActivity;->folderMode(Z)Lcom/esafirm/imagepicker/features/ImagePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v2, 0x7f090157

    .line 317
    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePicker;->folderTitle(Ljava/lang/String;)Lcom/esafirm/imagepicker/features/ImagePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$10;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const v2, 0x7f090232

    .line 318
    invoke-virtual {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePicker;->imageTitle(Ljava/lang/String;)Lcom/esafirm/imagepicker/features/ImagePicker;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePicker;->single()Lcom/esafirm/imagepicker/features/ImagePicker;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v3}, Lcom/esafirm/imagepicker/features/ImagePicker;->showCamera(Z)Lcom/esafirm/imagepicker/features/ImagePicker;

    move-result-object v0

    const/16 v1, 0x77

    .line 321
    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePicker;->start(I)V

    .line 322
    return-void
.end method
