.class Lcom/cooltechworks/views/ScratchTextView$1;
.super Landroid/os/AsyncTask;
.source "ScratchTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooltechworks/views/ScratchTextView;->checkRevealed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooltechworks/views/ScratchTextView;


# direct methods
.method constructor <init>(Lcom/cooltechworks/views/ScratchTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cooltechworks/views/ScratchTextView;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Float;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 319
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 320
    .local v2, "left":I
    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 321
    .local v3, "top":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 322
    .local v4, "width":I
    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 324
    .local v1, "height":I
    iget-object v5, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v5}, Lcom/cooltechworks/views/ScratchTextView;->access$000(Lcom/cooltechworks/views/ScratchTextView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, "croppedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/cooltechworks/utils/BitmapUtils;->getTransparentPixelPercent(Landroid/graphics/Bitmap;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 328
    iget-object v6, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v6}, Lcom/cooltechworks/views/ScratchTextView;->access$110(Lcom/cooltechworks/views/ScratchTextView;)I

    .line 326
    return-object v5

    .line 328
    .end local v0    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v6}, Lcom/cooltechworks/views/ScratchTextView;->access$110(Lcom/cooltechworks/views/ScratchTextView;)I

    throw v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cooltechworks/views/ScratchTextView$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Float;)V
    .locals 4
    .param p1, "percentRevealed"    # Ljava/lang/Float;

    .prologue
    .line 336
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-virtual {v1}, Lcom/cooltechworks/views/ScratchTextView;->isRevealed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v1}, Lcom/cooltechworks/views/ScratchTextView;->access$200(Lcom/cooltechworks/views/ScratchTextView;)F

    move-result v0

    .line 339
    .local v0, "oldValue":F
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/cooltechworks/views/ScratchTextView;->access$202(Lcom/cooltechworks/views/ScratchTextView;F)F

    .line 341
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v1}, Lcom/cooltechworks/views/ScratchTextView;->access$300(Lcom/cooltechworks/views/ScratchTextView;)Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/cooltechworks/views/ScratchTextView$IRevealListener;->onRevealPercentChangedListener(Lcom/cooltechworks/views/ScratchTextView;F)V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-virtual {v1}, Lcom/cooltechworks/views/ScratchTextView;->isRevealed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-static {v1}, Lcom/cooltechworks/views/ScratchTextView;->access$300(Lcom/cooltechworks/views/ScratchTextView;)Lcom/cooltechworks/views/ScratchTextView$IRevealListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cooltechworks/views/ScratchTextView$1;->this$0:Lcom/cooltechworks/views/ScratchTextView;

    invoke-interface {v1, v2}, Lcom/cooltechworks/views/ScratchTextView$IRevealListener;->onRevealed(Lcom/cooltechworks/views/ScratchTextView;)V

    .line 350
    .end local v0    # "oldValue":F
    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/cooltechworks/views/ScratchTextView$1;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
