.class public Lme/relex/circleindicator/SnackbarBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SnackbarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Lme/relex/circleindicator/CircleIndicator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private getTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;)F
    .locals 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "ci"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "minOffset":F
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 35
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "z":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 37
    .local v3, "view":Landroid/view/View;
    instance-of v5, v3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v5, :cond_0

    invoke-virtual {p1, p2, v3}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return v2
.end method


# virtual methods
.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p2, Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lme/relex/circleindicator/SnackbarBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lme/relex/circleindicator/CircleIndicator;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 22
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 11
    check-cast p2, Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {p0, p1, p2, p3}, Lme/relex/circleindicator/SnackbarBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lme/relex/circleindicator/CircleIndicator;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/SnackbarBehavior;->getTranslationYForSnackbar(Landroid/support/design/widget/CoordinatorLayout;Lme/relex/circleindicator/CircleIndicator;)F

    move-result v0

    .line 28
    .local v0, "translationY":F
    invoke-virtual {p2, v0}, Lme/relex/circleindicator/CircleIndicator;->setTranslationY(F)V

    .line 29
    const/4 v1, 0x1

    return v1
.end method
