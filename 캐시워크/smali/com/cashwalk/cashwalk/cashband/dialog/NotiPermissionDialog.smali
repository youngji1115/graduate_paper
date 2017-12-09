.class public Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;
.super Landroid/support/v7/app/AlertDialog$Builder;
.source "NotiPermissionDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public checkAndShow()V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->isNotiPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string/jumbo v0, "\uc54c\ub9bc \uad8c\ud55c \uc124\uc815"

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25
    const-string/jumbo v0, "\uce90\uc2dc\ubc34\ub4dc\uc758 \uc54c\ub9bc \uae30\ub2a5\uc744 \ubc1b\uae30 \uc704\ud574\uc120, \uc54c\ub9bc \uc811\uadfc \uad8c\ud55c\uc744 \ud65c\uc131\ud654 \ud574\uc57c \ud569\ub2c8\ub2e4."

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 26
    const-string/jumbo v0, "\uac70\ubd80"

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$1;-><init>(Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 33
    const-string/jumbo v0, "\ud5c8\uc6a9"

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog$2;-><init>(Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->show()Landroid/support/v7/app/AlertDialog;

    .line 44
    :cond_0
    return-void
.end method

.method public isNotiPermissionAllowed()Z
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    .line 48
    .local v1, "notiListenerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/dialog/NotiPermissionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "myPackageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const/4 v3, 0x1

    .line 59
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
