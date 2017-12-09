.class public Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;
.super Landroid/app/Dialog;
.source "VibrateRepeatCountDialog.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;
    }
.end annotation


# instance fields
.field private mCallBack:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

.field private mRepeatCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    iput v3, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mRepeatCount:I

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mCallBack:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

    .line 21
    const v1, 0x7f040085

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->setContentView(I)V

    .line 22
    const v1, 0x7f10035e

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$1;-><init>(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v1, 0x7f100375

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 31
    .local v0, "np_repeat":Landroid/widget/NumberPicker;
    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 32
    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 34
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 36
    const-string v1, "#c7c7c7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/util/Utils;->setDividerColor(Landroid/widget/NumberPicker;I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    .prologue
    .line 14
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mRepeatCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;)Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mCallBack:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

    return-object v0
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 45
    iput p3, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mRepeatCount:I

    .line 46
    return-void
.end method

.method public setOnSelectRepeatCount(Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;)V
    .locals 0
    .param p1, "callBack"    # Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog;->mCallBack:Lcom/cashwalk/cashwalk/cashband/dialog/VibrateRepeatCountDialog$OnSelectRepeatCount;

    .line 41
    return-void
.end method
