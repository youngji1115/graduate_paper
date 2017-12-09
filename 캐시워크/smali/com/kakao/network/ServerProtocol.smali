.class public final Lcom/kakao/network/ServerProtocol;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# static fields
.field public static final ACCESS_AGE_AUTH_PATH:Ljava/lang/String; = "ageauths/main.html"

.field public static final ACCESS_TOKEN_PATH:Ljava/lang/String; = "oauth/token"

.field public static final AGE_AUTH_AUTHORITY:Ljava/lang/String;

.field public static final API_AUTHORITY:Ljava/lang/String;

.field private static final API_VERSION:Ljava/lang/String; = "v1"

.field public static final AUTHORIZATION_BEARER:Ljava/lang/String; = "Bearer"

.field public static final AUTHORIZATION_HEADER_DELIMITER:Ljava/lang/String; = " "

.field public static final AUTHORIZATION_HEADER_KEY:Ljava/lang/String; = "Authorization"

.field public static final AUTHORIZE_CODE_PATH:Ljava/lang/String; = "oauth/authorize"

.field public static final AUTH_AUTHORITY:Ljava/lang/String;

.field private static final DEPLOY_PHASE:Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final EVENTS_PUBLISH_PATH:Ljava/lang/String; = "v1/s2/publish"

.field public static final GET_FRIENDS_OPERATION_PATH:Ljava/lang/String; = "v1/friends/operation"

.field public static final GET_FRIENDS_PATH:Ljava/lang/String; = "v1/friends"

.field public static final IS_STORY_USER_PATH:Ljava/lang/String; = "v1/api/story/isstoryuser"

.field public static final PUSH_DEREGISTER_PATH:Ljava/lang/String; = "v1/push/deregister"

.field public static final PUSH_REGISTER_PATH:Ljava/lang/String; = "v1/push/register"

.field public static final PUSH_SEND_PATH:Ljava/lang/String; = "v1/push/send"

.field public static final PUSH_TOKENS_PATH:Ljava/lang/String; = "v1/push/tokens"

.field public static final STORAGE_UPLOAD_IMAGE:Ljava/lang/String; = "v1/storage/image/upload"

.field public static final STORY_ACTIVITIES_PATH:Ljava/lang/String; = "v1/api/story/mystories"

.field public static final STORY_ACTIVITY_PATH:Ljava/lang/String; = "v1/api/story/mystory"

.field public static final STORY_DELETE_ACTIVITY_PATH:Ljava/lang/String; = "v1/api/story/delete/mystory"

.field public static final STORY_LINK_SCRAPPER_PATH:Ljava/lang/String; = "v1/api/story/linkinfo"

.field public static final STORY_MULTI_UPLOAD_PATH:Ljava/lang/String; = "v1/api/story/upload/multi"

.field public static final STORY_POST_LINK_PATH:Ljava/lang/String; = "v1/api/story/post/link"

.field public static final STORY_POST_NOTE_PATH:Ljava/lang/String; = "v1/api/story/post/note"

.field public static final STORY_POST_PHOTO_PATH:Ljava/lang/String; = "v1/api/story/post/photo"

.field public static final STORY_PROFILE_PATH:Ljava/lang/String; = "v1/api/story/profile"

.field public static final TALK_CHATROOM_LIST_PATH:Ljava/lang/String; = "v1/api/talk/chat/list"

.field public static final TALK_CHAT_LIST_PATH:Ljava/lang/String; = "v1/api/talk/chats"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TALK_MEMO_SEND:Ljava/lang/String; = "v1/api/talk/memo/send"

.field public static final TALK_MESSAGE_SEND:Ljava/lang/String; = "v1/api/talk/message/send"

.field public static final TALK_PROFILE_PATH:Ljava/lang/String; = "v1/api/talk/profile"

.field public static final USER_ACCESS_TOKEN_INFO_PATH:Ljava/lang/String; = "v1/user/access_token_info"

.field public static final USER_AGE_AUTH:Ljava/lang/String; = "v1/user/age_auth"

.field public static final USER_LOGOUT_PATH:Ljava/lang/String; = "v1/user/logout"

.field public static final USER_ME_PATH:Ljava/lang/String; = "v1/user/me"

.field public static final USER_SIGNUP_PATH:Ljava/lang/String; = "v1/user/signup"

.field public static final USER_UNLINK_PATH:Ljava/lang/String; = "v1/user/unlink"

.field public static final USER_UPDATE_PROFILE_PATH:Ljava/lang/String; = "v1/user/update_profile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->current()Lcom/kakao/util/helper/log/Logger$DeployPhase;

    move-result-object v0

    sput-object v0, Lcom/kakao/network/ServerProtocol;->DEPLOY_PHASE:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    .line 25
    invoke-static {}, Lcom/kakao/network/ServerProtocol;->initAuthAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/network/ServerProtocol;->AUTH_AUTHORITY:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/kakao/network/ServerProtocol;->initAgeAuthAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/network/ServerProtocol;->AGE_AUTH_AUTHORITY:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/kakao/network/ServerProtocol;->initAPIAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/network/ServerProtocol;->API_AUTHORITY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initAPIAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/kakao/network/ServerProtocol$1;->$SwitchMap$com$kakao$util$helper$log$Logger$DeployPhase:[I

    sget-object v1, Lcom/kakao/network/ServerProtocol;->DEPLOY_PHASE:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    invoke-virtual {v1}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "localhost:"

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v0, "alpha-kapi.kakao.com"

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "sandbox-kapi.kakao.com"

    goto :goto_0

    .line 115
    :pswitch_3
    const-string v0, "beta-kapi.kakao.com"

    goto :goto_0

    .line 117
    :pswitch_4
    const-string v0, "kapi.kakao.com"

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static initAgeAuthAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/kakao/network/ServerProtocol$1;->$SwitchMap$com$kakao$util$helper$log$Logger$DeployPhase:[I

    sget-object v1, Lcom/kakao/network/ServerProtocol;->DEPLOY_PHASE:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    invoke-virtual {v1}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    const-string v0, "localhost:"

    goto :goto_0

    .line 128
    :pswitch_1
    const-string v0, "alpha-auth.kakao.com"

    goto :goto_0

    .line 130
    :pswitch_2
    const-string v0, "sandbox-auth.kakao.com"

    goto :goto_0

    .line 132
    :pswitch_3
    const-string v0, "beta-auth.kakao.com"

    goto :goto_0

    .line 134
    :pswitch_4
    const-string v0, "auth.kakao.com"

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static initAuthAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/kakao/network/ServerProtocol$1;->$SwitchMap$com$kakao$util$helper$log$Logger$DeployPhase:[I

    sget-object v1, Lcom/kakao/network/ServerProtocol;->DEPLOY_PHASE:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    invoke-virtual {v1}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    const-string v0, "localhost:"

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "alpha-kauth.kakao.com"

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "sandbox-kauth.kakao.com"

    goto :goto_0

    .line 98
    :pswitch_3
    const-string v0, "beta-kauth.kakao.com"

    goto :goto_0

    .line 100
    :pswitch_4
    const-string v0, "kauth.kakao.com"

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
