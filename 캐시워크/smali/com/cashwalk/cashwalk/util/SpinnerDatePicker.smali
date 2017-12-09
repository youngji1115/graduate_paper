.class public Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;
.super Landroid/support/v4/app/DialogFragment;
.source "SpinnerDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;
    }
.end annotation


# instance fields
.field private dialog_date_datePicker:Landroid/widget/DatePicker;

.field mSpinnerDatePickerListener:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;

.field private tv_cancel:Landroid/widget/TextView;

.field private tv_done:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)Landroid/widget/DatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->dialog_date_datePicker:Landroid/widget/DatePicker;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 66
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->mSpinnerDatePickerListener:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement SpinnerDatePicker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1003dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->dialog_date_datePicker:Landroid/widget/DatePicker;

    .line 28
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->dialog_date_datePicker:Landroid/widget/DatePicker;

    const/16 v2, 0x7c6

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$1;-><init>(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 33
    const v1, 0x7f1003de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->tv_done:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f100374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->tv_cancel:Landroid/widget/TextView;

    .line 35
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->tv_done:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$2;-><init>(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->tv_cancel:Landroid/widget/TextView;

    new-instance v2, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$3;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$3;-><init>(Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public resultAction(Ljava/lang/String;III)V
    .locals 6
    .param p1, "selectDate"    # Ljava/lang/String;
    .param p2, "y"    # I
    .param p3, "m"    # I
    .param p4, "d"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker;->mSpinnerDatePickerListener:Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/cashwalk/cashwalk/util/SpinnerDatePicker$SpinnerDatePickerListener;->onDialogClick(Landroid/support/v4/app/DialogFragment;Ljava/lang/String;III)V

    .line 80
    return-void
.end method
