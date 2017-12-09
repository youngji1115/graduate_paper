.class public Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;
.super Landroid/widget/FrameLayout;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;,
        Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$Builder;
    }
.end annotation


# static fields
.field public static final POSITION_BOTTOM_CENTER:I = 0x5

.field public static final POSITION_BOTTOM_LEFT:I = 0x6

.field public static final POSITION_BOTTOM_RIGHT:I = 0x4

.field public static final POSITION_LEFT_CENTER:I = 0x7

.field public static final POSITION_RIGHT_CENTER:I = 0x3

.field public static final POSITION_TOP_CENTER:I = 0x1

.field public static final POSITION_TOP_LEFT:I = 0x8

.field public static final POSITION_TOP_RIGHT:I = 0x2

.field public static final THEME_DARK:I = 0x1

.field public static final THEME_LIGHT:I


# instance fields
.field private contentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;ILandroid/graphics/drawable/Drawable;ILandroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutParams"    # Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton$LayoutParams;
    .param p3, "theme"    # I
    .param p4, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "position"    # I
    .param p6, "contentView"    # Landroid/view/View;
    .param p7, "contentParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p5, p2}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setPosition(ILandroid/widget/FrameLayout$LayoutParams;)V

    .line 53
    if-nez p4, :cond_0

    .line 54
    if-nez p3, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_action_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 59
    :cond_0
    :goto_0
    invoke-direct {p0, p4}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    .line 60
    if-eqz p6, :cond_1

    .line 61
    invoke-virtual {p0, p6, p7}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 63
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->attach(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 66
    return-void

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oguzdev/circularfloatingactionmenu/library/R$drawable;->button_action_dark_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0
.end method

.method private setBackgroundResource(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public getActivityContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "contentParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    const/16 v4, 0x11

    const/4 v2, -0x2

    .line 111
    iput-object p1, p0, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->contentView:Landroid/view/View;

    .line 113
    if-nez p2, :cond_0

    .line 114
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oguzdev/circularfloatingactionmenu/library/R$dimen;->action_button_content_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    .local v0, "margin":I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 121
    .end local v0    # "margin":I
    :goto_0
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 124
    invoke-virtual {p0, p1, v1}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void

    .line 119
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    move-object v1, p2

    .restart local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public setPosition(ILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 99
    :pswitch_0
    const/16 v0, 0x55

    .line 102
    .local v0, "gravity":I
    :goto_0
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    invoke-virtual {p0, p2}, Lcom/oguzdev/circularfloatingactionmenu/library/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void

    .line 77
    .end local v0    # "gravity":I
    :pswitch_1
    const/16 v0, 0x31

    .line 78
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 80
    .end local v0    # "gravity":I
    :pswitch_2
    const/16 v0, 0x35

    .line 81
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 83
    .end local v0    # "gravity":I
    :pswitch_3
    const/16 v0, 0x15

    .line 84
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 86
    .end local v0    # "gravity":I
    :pswitch_4
    const/16 v0, 0x51

    .line 87
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 89
    .end local v0    # "gravity":I
    :pswitch_5
    const/16 v0, 0x53

    .line 90
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 92
    .end local v0    # "gravity":I
    :pswitch_6
    const/16 v0, 0x13

    .line 93
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 95
    .end local v0    # "gravity":I
    :pswitch_7
    const/16 v0, 0x33

    .line 96
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
