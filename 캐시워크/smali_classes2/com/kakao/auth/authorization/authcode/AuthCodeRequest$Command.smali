.class public final enum Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
.super Ljava/lang/Enum;
.source "AuthCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

.field public static final enum LOGGED_IN_STORY:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

.field public static final enum LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

.field public static final enum LOGGED_OUT_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

.field public static final enum WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    const-string v1, "LOGGED_IN_TALK"

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .line 43
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    const-string v1, "LOGGED_OUT_TALK"

    invoke-direct {v0, v1, v3}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_OUT_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .line 48
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    const-string v1, "LOGGED_IN_STORY"

    invoke-direct {v0, v1, v4}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_STORY:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .line 53
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    const-string v1, "WEBVIEW_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_OUT_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_STORY:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->$VALUES:[Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->$VALUES:[Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-virtual {v0}, [Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    return-object v0
.end method
