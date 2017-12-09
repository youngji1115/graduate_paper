.class public Lcom/kakao/util/helper/StoryProtocol;
.super Lcom/kakao/util/helper/KakaoServiceProtocol;
.source "StoryProtocol.java"


# static fields
.field private static final INTENT_ACTION_LOGGED_IN_ACTIVITY:Ljava/lang/String; = "com.kakao.story.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

.field private static final STORY_MIN_VERSION_SUPPORT_CAPRI:I = 0x50

.field private static final STORY_MIN_VERSION_SUPPORT_PROJEC_LOGIN:I = 0x63


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kakao/util/helper/KakaoServiceProtocol;-><init>()V

    return-void
.end method

.method public static createLoggedInActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "redirectURI"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "needProjectLogin"    # Z

    .prologue
    .line 35
    const-string v1, "com.kakao.story.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    invoke-static {v1, p1, p2, p3}, Lcom/kakao/util/helper/StoryProtocol;->createIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    const/16 v1, 0x63

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/StoryProtocol;->checkSupportedService(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x50

    goto :goto_0
.end method

.method public static existCapriLoginActivityInStory(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needProjectLogin"    # Z

    .prologue
    .line 41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.kakao.story.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.category.DEFAULT"

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const/16 v1, 0x63

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/kakao/util/helper/StoryProtocol;->checkSupportedService(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/16 v1, 0x50

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
