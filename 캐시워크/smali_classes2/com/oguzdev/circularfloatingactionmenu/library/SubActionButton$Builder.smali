.class public Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
.super Ljava/lang/Object;
.source "SubActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private contentParams:Landroid/widget/FrameLayout$LayoutParams;

.field private contentView:Landroid/view/View;

.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->activity:Landroid/app/Activity;

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->sub_action_button_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 104
    .local v1, "size":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 105
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->setLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;

    .line 106
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->setTheme(I)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;

    .line 107
    return-void
.end method


# virtual methods
.method public build()Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;
    .locals 7

    .prologue
    .line 136
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->theme:I

    iget-object v4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->contentView:Landroid/view/View;

    iget-object v6, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->contentParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct/range {v0 .. v6}, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton;-><init>(Landroid/app/Activity;Landroid/widget/FrameLayout$LayoutParams;ILandroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    .locals 0
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->contentView:Landroid/view/View;

    .line 126
    return-object p0
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "contentParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->contentView:Landroid/view/View;

    .line 131
    iput-object p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->contentParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    return-object p0
.end method

.method public setLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    .locals 0
    .param p1, "params"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    return-object p0
.end method

.method public setTheme(I)Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/SubActionButton$Builder;->theme:I

    .line 116
    return-object p0
.end method
