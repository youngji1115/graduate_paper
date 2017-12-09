.class Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$2;
.super Ljava/lang/Object;
.source "CashWalkApp.java"

# interfaces
.implements Lcom/kakao/auth/IApplicationConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;->getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$2;->this$0:Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/cashwalk/cashwalk/CashWalkApp;->getGlobalApplicationContext()Lcom/cashwalk/cashwalk/CashWalkApp;

    move-result-object v0

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/cashwalk/cashwalk/CashWalkApp;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
