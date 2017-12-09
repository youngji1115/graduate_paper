.class synthetic Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;
.super Ljava/lang/Object;
.source "GetterAuthCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kakao$auth$AuthType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/kakao/auth/AuthType;->values()[Lcom/kakao/auth/AuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    :try_start_0
    sget-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    invoke-virtual {v1}, Lcom/kakao/auth/AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_STORY:Lcom/kakao/auth/AuthType;

    invoke-virtual {v1}, Lcom/kakao/auth/AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_TALK_EXCLUDE_NATIVE_LOGIN:Lcom/kakao/auth/AuthType;

    invoke-virtual {v1}, Lcom/kakao/auth/AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    sget-object v1, Lcom/kakao/auth/AuthType;->KAKAO_LOGIN_ALL:Lcom/kakao/auth/AuthType;

    invoke-virtual {v1}, Lcom/kakao/auth/AuthType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
