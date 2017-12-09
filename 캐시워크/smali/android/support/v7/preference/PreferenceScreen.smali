.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 87
    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    .line 96
    .local v0, "listener":Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p0}, Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public setShouldUseGeneratedIds(Z)V
    .locals 2
    .param p1, "shouldUseGeneratedIds"    # Z

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 135
    return-void
.end method

.method public shouldUseGeneratedIds()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
