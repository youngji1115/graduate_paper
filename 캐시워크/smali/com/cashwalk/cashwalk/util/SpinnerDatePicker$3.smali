.class Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$3;
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
    .line 50
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$3;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$3;->this$0:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->dismiss()V

    .line 54
    return-void
.end method
