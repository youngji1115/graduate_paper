.class Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;
.super Ljava/lang/Object;
.source "SpinnerDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 38
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->access$000(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v0

    .line 39
    .local v0, "day":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->access$000(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 40
    .local v1, "month":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->access$000(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)Landroid/widget/DatePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    .line 42
    .local v3, "year":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \uc120\ud0dd \ub0a0\uc9dc => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \uc120\ud0dd \ub0a0\uc9dc => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### \uc120\ud0dd \ub0a0\uc9dc => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "resultDate":Ljava/lang/String;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->resultAction(Ljava/lang/String;III)V

    .line 48
    return-void
.end method
