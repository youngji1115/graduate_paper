.class public Lcom/cashwalk/cashwalk/util/SoftKeyboard;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;,
        Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;
    }
.end annotation


# static fields
.field private static final CLEAR_FOCUS:I


# instance fields
.field private coords:[I

.field private editTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private im:Landroid/view/inputmethod/InputMethodManager;

.field private isKeyboardShow:Z

.field private layout:Landroid/view/ViewGroup;

.field private layoutBottom:I

.field private final mHandler:Landroid/os/Handler;

.field private softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

.field private tempView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "im"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$1;-><init>(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layout:Landroid/view/ViewGroup;

    .line 31
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->keyboardHideByDefault()V

    .line 32
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->initEditTexts(Landroid/view/ViewGroup;)V

    .line 33
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->im:Landroid/view/inputmethod/InputMethodManager;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->coords:[I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    .line 36
    new-instance v0, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;-><init>(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->start()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->tempView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cashwalk/cashwalk/util/SoftKeyboard;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->tempView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->getLayoutCoordinates()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 14
    iget v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layoutBottom:I

    return v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    return v0
.end method

.method static synthetic access$302(Lcom/cashwalk/cashwalk/util/SoftKeyboard;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/util/SoftKeyboard;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLayoutCoordinates()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->coords:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->coords:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initEditTexts(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->editTextList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->editTextList:Ljava/util/List;

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 99
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_3

    .line 101
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 105
    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->initEditTexts(Landroid/view/ViewGroup;)V

    .line 108
    :cond_1
    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_2

    move-object v1, v3

    .line 110
    check-cast v1, Landroid/widget/EditText;

    .line 111
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 112
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 113
    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->editTextList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private keyboardHideByDefault()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 87
    return-void
.end method


# virtual methods
.method public closeSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->im:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 57
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    .line 59
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 125
    if-eqz p2, :cond_0

    .line 127
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->tempView:Landroid/view/View;

    .line 128
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->getLayoutCoordinates()I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layoutBottom:I

    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->keyboardOpened()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    .line 135
    :cond_0
    return-void
.end method

.method public openSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->getLayoutCoordinates()I

    move-result v0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->layoutBottom:I

    .line 46
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->im:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 47
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->keyboardOpened()V

    .line 48
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->isKeyboardShow:Z

    .line 50
    :cond_0
    return-void
.end method

.method public setSoftKeyboardCallback(Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;)V
    .locals 1
    .param p1, "mCallback"    # Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->setCallback(Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChanged;)V

    .line 64
    return-void
.end method

.method public unRegisterSoftKeyboardCallback()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SoftKeyboard;->softKeyboardThread:Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/util/SoftKeyboard$SoftKeyboardChangesThread;->stopThread()V

    .line 69
    return-void
.end method
