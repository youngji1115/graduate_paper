.class public Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;
.super Ljava/lang/Object;
.source "ImagePickerPreferences.java"


# static fields
.field public static final PREF_CAMERA_REQUESTED:Ljava/lang/String; = "cameraRequested"

.field public static final PREF_WRITE_EXTERNAL_STORAGE_REQUESTED:Ljava/lang/String; = "writeExternalRequested"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public isPermissionRequested(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPermissionRequested(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v2, p0, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    return-void
.end method
