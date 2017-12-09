.class public Lcom/cashwalk/cashwalk/util/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postBendFeed(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "com.nhn.android.band"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public static postCommonShare(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public static postFacebookFeed(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z
    .locals 8
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.facebook.katana"

    invoke-static {v6, v7}, Lcom/cashwalk/cashwalk/util/Utils;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 38
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    .line 39
    .local v0, "callbackManager":Lcom/facebook/CallbackManager;
    new-instance v4, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v4, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 41
    .local v4, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    new-instance v5, Lcom/cashwalk/cashwalk/util/ShareManager$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/util/ShareManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0, v5}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 58
    new-instance v5, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v5, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    .line 59
    .local v3, "photo":Lcom/facebook/share/model/SharePhoto;
    new-instance v5, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v5, v3}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v1

    .line 60
    .local v1, "content":Lcom/facebook/share/model/SharePhotoContent;
    new-instance v2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 61
    .local v2, "dialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v5, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v5}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v2, v1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 65
    :cond_0
    const/4 v5, 0x1

    .line 68
    .end local v0    # "callbackManager":Lcom/facebook/CallbackManager;
    .end local v1    # "content":Lcom/facebook/share/model/SharePhotoContent;
    .end local v2    # "dialog":Lcom/facebook/share/widget/ShareDialog;
    .end local v3    # "photo":Lcom/facebook/share/model/SharePhoto;
    .end local v4    # "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    :goto_0
    return v5

    .line 67
    :cond_1
    const-string/jumbo v6, "\ud398\uc774\uc2a4\ubd81\uc744 \uc124\uce58\ud574\uc8fc\uc138\uc694."

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static postKakaoImage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    :cond_0
    const-string v1, "com.kakao.talk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method
