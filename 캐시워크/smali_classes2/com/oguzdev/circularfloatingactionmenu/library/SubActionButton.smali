.class public Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;
.super Landroid/widget/FrameLayout;
.source "SubActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    }
.end annotation


# static fields
.field public static final THEME_DARK:I = 0x1

.field public static final THEME_DARKER:I = 0x3

.field public static final THEME_LIGHT:I = 0x0

.field public static final THEME_LIGHTER:I = 0x2


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "theme"    # I
    .param p4, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "contentView"    # Landroid/view/View;
    .param p6, "contentParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    if-nez p4, :cond_5

    .line 28
    if-nez p3, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_sub_action_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 47
    :goto_0
    invoke-direct {p0, p4}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    .line 48
    if-eqz p5, :cond_0

    .line 49
    invoke-virtual {p0, p5, p6}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 51
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setClickable(Z)V

    .line 52
    return-void

    .line 31
    :cond_1
    if-ne p3, v2, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_sub_action_dark_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_action_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 37
    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_action_dark_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 41
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown SubActionButton theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_5
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0
.end method

.method private setBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 76
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    const/4 v2, -0x2

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .end local p2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    invoke-direct {p2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 62
    .restart local p2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->sub_action_button_content_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    .local v0, "margin":I
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    .end local v0    # "margin":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method
