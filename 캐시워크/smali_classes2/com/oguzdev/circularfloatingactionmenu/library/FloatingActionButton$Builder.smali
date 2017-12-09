.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private contentParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

.field private contentView:Landroid/view/View;

.field private layoutParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

.field private position:I

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->action_button_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 177
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->action_button_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 178
    .local v1, "margin":I
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    const/16 v3, 0x55

    invoke-direct {v0, v2, v2, v3}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;-><init>(III)V

    .line 179
    .local v0, "layoutParams":Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;->setMargins(IIII)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->setLayoutParams(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;

    .line 181
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->setTheme(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;

    .line 182
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->setPosition(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;

    .line 183
    return-void
.end method


# virtual methods
.method public build()Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;
    .locals 8

    .prologue
    .line 220
    new-instance v0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;

    iget-object v1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->layoutParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    iget v3, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->theme:I

    iget-object v4, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->position:I

    iget-object v6, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->contentView:Landroid/view/View;

    iget-object v7, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->contentParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    invoke-direct/range {v0 .. v7}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;-><init>(Landroid/app/Activity;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;ILandroid/graphics/drawable/Drawable;ILandroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public setBackgroundDrawable(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 1
    .param p1, "drawableId"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 0
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->setContentView(Landroid/view/View;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(Landroid/view/View;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 0
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "contentParams"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->contentView:Landroid/view/View;

    .line 215
    iput-object p2, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->contentParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    .line 216
    return-object p0
.end method

.method public setLayoutParams(Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 0
    .param p1, "params"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->layoutParams:Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;

    .line 187
    return-object p0
.end method

.method public setPosition(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->position:I

    .line 206
    return-object p0
.end method

.method public setTheme(I)Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;->theme:I

    .line 192
    return-object p0
.end method
