.class public final enum Lcom/kakao/auth/ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/ErrorCode;

.field public static final enum ACCESS_DENIED_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum ALREADY_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum AUTH_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum BLOCKED_ACTION_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum CLIENT_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum EXCEED_LIMIT_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum EXCEED_MAX_UPLOAD_NUMBER:Lcom/kakao/auth/ErrorCode;

.field public static final enum EXCEED_MAX_UPLOAD_SIZE:Lcom/kakao/auth/ErrorCode;

.field public static final enum EXECUTION_TIMED_OUT:Lcom/kakao/auth/ErrorCode;

.field public static final enum INTERNAL_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_FRIENDS_RESULT_ID:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_PARAM_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_SCOPE_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_STORY_ACTIVITY_ID:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_STORY_SCRAP_URL:Lcom/kakao/auth/ErrorCode;

.field public static final enum INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum KAKAO_MAINTENANCE_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum MSG_DISABLED:Lcom/kakao/auth/ErrorCode;

.field public static final enum MSG_SENDER_DAILY:Lcom/kakao/auth/ErrorCode;

.field public static final enum MSG_SENDER_RECEIVER_MONTHLY:Lcom/kakao/auth/ErrorCode;

.field public static final enum NEED_TO_AGE_AUTHENTICATION:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_APP_CATEGORY_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_APP_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_DEVELOPER_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_KAKAOSTORY_USER_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_KAKAOTALK_USER_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_KAKAO_ACCOUNT_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_EXIST_PUSH_TOKEN:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_REGISTERED_PROPERTY_KEY_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_SUPPORTED_API_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum NOT_SUPPORTED_OS:Lcom/kakao/auth/ErrorCode;

.field public static final enum UNDEFINED_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

.field public static final enum UNDER_AGE_LIMIT:Lcom/kakao/auth/ErrorCode;

.field private static final reverseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kakao/auth/ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x18

    const/4 v1, 0x0

    .line 29
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "AUTH_ERROR_CODE"

    const/16 v4, -0x308

    invoke-direct {v2, v3, v1, v4}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->AUTH_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    .line 33
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "CLIENT_ERROR_CODE"

    const/16 v4, -0x309

    invoke-direct {v2, v3, v7, v4}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->CLIENT_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    .line 37
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "UNDEFINED_ERROR_CODE"

    const/16 v4, -0x378

    invoke-direct {v2, v3, v8, v4}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->UNDEFINED_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    .line 41
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INTERNAL_ERROR_CODE"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v9, v4}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INTERNAL_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    .line 45
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_PARAM_CODE"

    const/4 v4, 0x4

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_PARAM_CODE:Lcom/kakao/auth/ErrorCode;

    .line 51
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_SUPPORTED_API_CODE"

    const/4 v4, 0x5

    const/4 v5, -0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_SUPPORTED_API_CODE:Lcom/kakao/auth/ErrorCode;

    .line 55
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "BLOCKED_ACTION_CODE"

    const/4 v4, 0x6

    const/4 v5, -0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->BLOCKED_ACTION_CODE:Lcom/kakao/auth/ErrorCode;

    .line 59
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "ACCESS_DENIED_CODE"

    const/4 v4, 0x7

    const/4 v5, -0x5

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->ACCESS_DENIED_CODE:Lcom/kakao/auth/ErrorCode;

    .line 63
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "EXCEED_LIMIT_CODE"

    const/16 v4, 0x8

    const/16 v5, -0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->EXCEED_LIMIT_CODE:Lcom/kakao/auth/ErrorCode;

    .line 68
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_REGISTERED_USER_CODE"

    const/16 v4, 0x9

    const/16 v5, -0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

    .line 73
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "ALREADY_REGISTERED_USER_CODE"

    const/16 v4, 0xa

    const/16 v5, -0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->ALREADY_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

    .line 78
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_KAKAO_ACCOUNT_CODE"

    const/16 v4, 0xb

    const/16 v5, -0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAO_ACCOUNT_CODE:Lcom/kakao/auth/ErrorCode;

    .line 84
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_REGISTERED_PROPERTY_KEY_CODE"

    const/16 v4, 0xc

    const/16 v5, -0xc9

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_REGISTERED_PROPERTY_KEY_CODE:Lcom/kakao/auth/ErrorCode;

    .line 88
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_APP_CODE"

    const/16 v4, 0xd

    const/16 v5, -0x12d

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_APP_CODE:Lcom/kakao/auth/ErrorCode;

    .line 92
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_APP_CATEGORY_CODE"

    const/16 v4, 0xe

    const/16 v5, -0x12e

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_APP_CATEGORY_CODE:Lcom/kakao/auth/ErrorCode;

    .line 97
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_TOKEN_CODE"

    const/16 v4, 0xf

    const/16 v5, -0x191

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    .line 101
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_SCOPE_CODE"

    const/16 v4, 0x10

    const/16 v5, -0x192

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_SCOPE_CODE:Lcom/kakao/auth/ErrorCode;

    .line 105
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NEED_TO_AGE_AUTHENTICATION"

    const/16 v4, 0x11

    const/16 v5, -0x195

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NEED_TO_AGE_AUTHENTICATION:Lcom/kakao/auth/ErrorCode;

    .line 109
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "UNDER_AGE_LIMIT"

    const/16 v4, 0x12

    const/16 v5, -0x196

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->UNDER_AGE_LIMIT:Lcom/kakao/auth/ErrorCode;

    .line 114
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_KAKAOTALK_USER_CODE"

    const/16 v4, 0x13

    const/16 v5, -0x1f5

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAOTALK_USER_CODE:Lcom/kakao/auth/ErrorCode;

    .line 119
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_SUPPORTED_OS"

    const/16 v4, 0x14

    const/16 v5, -0x1f8

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_SUPPORTED_OS:Lcom/kakao/auth/ErrorCode;

    .line 124
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "MSG_DISABLED"

    const/16 v4, 0x15

    const/16 v5, -0x212

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->MSG_DISABLED:Lcom/kakao/auth/ErrorCode;

    .line 129
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "MSG_SENDER_RECEIVER_MONTHLY"

    const/16 v4, 0x16

    const/16 v5, -0x213

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->MSG_SENDER_RECEIVER_MONTHLY:Lcom/kakao/auth/ErrorCode;

    .line 134
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "MSG_SENDER_DAILY"

    const/16 v4, 0x17

    const/16 v5, -0x214

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->MSG_SENDER_DAILY:Lcom/kakao/auth/ErrorCode;

    .line 139
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_KAKAOSTORY_USER_CODE"

    const/16 v4, -0x259

    invoke-direct {v2, v3, v6, v4}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAOSTORY_USER_CODE:Lcom/kakao/auth/ErrorCode;

    .line 144
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "EXCEED_MAX_UPLOAD_SIZE"

    const/16 v4, 0x19

    const/16 v5, -0x25a

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->EXCEED_MAX_UPLOAD_SIZE:Lcom/kakao/auth/ErrorCode;

    .line 149
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "EXECUTION_TIMED_OUT"

    const/16 v4, 0x1a

    const/16 v5, -0x25b

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->EXECUTION_TIMED_OUT:Lcom/kakao/auth/ErrorCode;

    .line 154
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_STORY_SCRAP_URL"

    const/16 v4, 0x1b

    const/16 v5, -0x25c

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_STORY_SCRAP_URL:Lcom/kakao/auth/ErrorCode;

    .line 159
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_STORY_ACTIVITY_ID"

    const/16 v4, 0x1c

    const/16 v5, -0x25d

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_STORY_ACTIVITY_ID:Lcom/kakao/auth/ErrorCode;

    .line 164
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "EXCEED_MAX_UPLOAD_NUMBER"

    const/16 v4, 0x1d

    const/16 v5, -0x25e

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->EXCEED_MAX_UPLOAD_NUMBER:Lcom/kakao/auth/ErrorCode;

    .line 168
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_DEVELOPER_CODE"

    const/16 v4, 0x1e

    const/16 v5, -0x2bd

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_DEVELOPER_CODE:Lcom/kakao/auth/ErrorCode;

    .line 172
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "NOT_EXIST_PUSH_TOKEN"

    const/16 v4, 0x1f

    const/16 v5, -0x385

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_PUSH_TOKEN:Lcom/kakao/auth/ErrorCode;

    .line 177
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "INVALID_FRIENDS_RESULT_ID"

    const/16 v4, 0x20

    const/16 v5, -0x388

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->INVALID_FRIENDS_RESULT_ID:Lcom/kakao/auth/ErrorCode;

    .line 181
    new-instance v2, Lcom/kakao/auth/ErrorCode;

    const-string v3, "KAKAO_MAINTENANCE_CODE"

    const/16 v4, 0x21

    const/16 v5, -0x2646

    invoke-direct {v2, v3, v4, v5}, Lcom/kakao/auth/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->KAKAO_MAINTENANCE_CODE:Lcom/kakao/auth/ErrorCode;

    .line 24
    const/16 v2, 0x22

    new-array v2, v2, [Lcom/kakao/auth/ErrorCode;

    sget-object v3, Lcom/kakao/auth/ErrorCode;->AUTH_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/kakao/auth/ErrorCode;->CLIENT_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v3, v2, v7

    sget-object v3, Lcom/kakao/auth/ErrorCode;->UNDEFINED_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v3, v2, v8

    sget-object v3, Lcom/kakao/auth/ErrorCode;->INTERNAL_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_PARAM_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_SUPPORTED_API_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/kakao/auth/ErrorCode;->BLOCKED_ACTION_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/kakao/auth/ErrorCode;->ACCESS_DENIED_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/kakao/auth/ErrorCode;->EXCEED_LIMIT_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/kakao/auth/ErrorCode;->ALREADY_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAO_ACCOUNT_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_REGISTERED_PROPERTY_KEY_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_APP_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_APP_CATEGORY_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_SCOPE_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NEED_TO_AGE_AUTHENTICATION:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/kakao/auth/ErrorCode;->UNDER_AGE_LIMIT:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAOTALK_USER_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_SUPPORTED_OS:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/kakao/auth/ErrorCode;->MSG_DISABLED:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/kakao/auth/ErrorCode;->MSG_SENDER_RECEIVER_MONTHLY:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Lcom/kakao/auth/ErrorCode;->MSG_SENDER_DAILY:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    sget-object v3, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAOSTORY_USER_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v3, v2, v6

    const/16 v3, 0x19

    sget-object v4, Lcom/kakao/auth/ErrorCode;->EXCEED_MAX_UPLOAD_SIZE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    sget-object v4, Lcom/kakao/auth/ErrorCode;->EXECUTION_TIMED_OUT:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_STORY_SCRAP_URL:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_STORY_ACTIVITY_ID:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    sget-object v4, Lcom/kakao/auth/ErrorCode;->EXCEED_MAX_UPLOAD_NUMBER:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_DEVELOPER_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    sget-object v4, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_PUSH_TOKEN:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x20

    sget-object v4, Lcom/kakao/auth/ErrorCode;->INVALID_FRIENDS_RESULT_ID:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    const/16 v3, 0x21

    sget-object v4, Lcom/kakao/auth/ErrorCode;->KAKAO_MAINTENANCE_CODE:Lcom/kakao/auth/ErrorCode;

    aput-object v4, v2, v3

    sput-object v2, Lcom/kakao/auth/ErrorCode;->$VALUES:[Lcom/kakao/auth/ErrorCode;

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/kakao/auth/ErrorCode;->reverseMap:Ljava/util/Map;

    .line 187
    invoke-static {}, Lcom/kakao/auth/ErrorCode;->values()[Lcom/kakao/auth/ErrorCode;

    move-result-object v2

    array-length v3, v2

    .local v0, "errorCode":Lcom/kakao/auth/ErrorCode;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 188
    sget-object v4, Lcom/kakao/auth/ErrorCode;->reverseMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/kakao/auth/ErrorCode;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput p3, p0, Lcom/kakao/auth/ErrorCode;->errorCode:I

    .line 194
    return-void
.end method

.method public static valueOf(Ljava/lang/Integer;)Lcom/kakao/auth/ErrorCode;
    .locals 2
    .param p0, "i"    # Ljava/lang/Integer;

    .prologue
    .line 210
    if-nez p0, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    sget-object v1, Lcom/kakao/auth/ErrorCode;->reverseMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/ErrorCode;

    .line 213
    .local v0, "errorCode":Lcom/kakao/auth/ErrorCode;
    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/kakao/auth/ErrorCode;->UNDEFINED_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/kakao/auth/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/ErrorCode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kakao/auth/ErrorCode;->$VALUES:[Lcom/kakao/auth/ErrorCode;

    invoke-virtual {v0}, [Lcom/kakao/auth/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/kakao/auth/ErrorCode;->errorCode:I

    return v0
.end method
