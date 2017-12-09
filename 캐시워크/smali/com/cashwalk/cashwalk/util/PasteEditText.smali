.class public Lcom/cashwalk/cashwalk/util/PasteEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "PasteEditText.java"


# instance fields
.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/PasteEditTextListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/PasteEditText;->listeners:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/PasteEditText;->listeners:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/PasteEditText;->listeners:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public addListener(Lcom/cashwalk/cashwalk/util/PasteEditTextListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/util/PasteEditTextListener;

    .prologue
    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PasteEditText;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result v0

    .line 41
    .local v0, "consumed":Z
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    return v0

    .line 43
    :pswitch_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->onTextCut()V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->onTextPaste()V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/PasteEditText;->onTextCopy()V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1020020
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTextCopy()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onTextCut()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onTextPaste()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/PasteEditText;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/util/PasteEditTextListener;

    .line 65
    .local v0, "listener":Lcom/cashwalk/cashwalk/util/PasteEditTextListener;
    invoke-interface {v0}, Lcom/cashwalk/cashwalk/util/PasteEditTextListener;->onUpdate()V

    goto :goto_0

    .line 67
    .end local v0    # "listener":Lcom/cashwalk/cashwalk/util/PasteEditTextListener;
    :cond_0
    return-void
.end method
