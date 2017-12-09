.class Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$1;
.super Ljava/lang/Object;
.source "CashWalkApp.java"

# interfaces
.implements Lcom/kakao/auth/ISessionConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;
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
    .line 156
    iput-object p1, p0, Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter$1;->this$0:Lcom/cashwalk/cashwalk/CashWalkApp$KakaoSDKAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApprovalType()Lcom/kakao/auth/ApprovalType;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/kakao/auth/ApprovalType;->INDIVIDUAL:Lcom/kakao/auth/ApprovalType;

    return-object v0
.end method

.method public getAuthTypes()[Lcom/kakao/auth/AuthType;
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kakao/auth/AuthType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isSaveFormData()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isSecureMode()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public isUsingWebviewTimer()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
