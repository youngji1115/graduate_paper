.class public final Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;
.super Ljava/lang/Object;
.source "KakaoTalkLinkProtocol.java"


# static fields
.field public static final ACTIONINFO_DEVICETYPE:Ljava/lang/String; = "devicetype"

.field public static final ACTIONINFO_EXEC_PARAM:Ljava/lang/String; = "execparam"

.field public static final ACTIONINFO_MARKET_PARAM:Ljava/lang/String; = "marketparam"

.field public static final ACTIONINFO_OS:Ljava/lang/String; = "os"

.field public static final ACTION_ACTIONINFO:Ljava/lang/String; = "actioninfo"

.field public static final ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final ACTION_URL:Ljava/lang/String; = "url"

.field public static final API_VER:Ljava/lang/String; = "apiver"

.field public static final API_VERSION:Ljava/lang/String; = "3.0"

.field public static final APP_KEY:Ljava/lang/String; = "appkey"

.field public static final APP_KEY_HASH:Ljava/lang/String; = "keyHash"

.field public static final APP_PACKAGE:Ljava/lang/String; = "appPkg"

.field public static final APP_VER:Ljava/lang/String; = "appver"

.field public static final ENCODING:Ljava/lang/String;

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field public static final FORWARDABLE:Ljava/lang/String; = "forwardable"

.field public static final KAKAO_TALK_LINK_URL:Ljava/lang/String; = "kakaolink://send"

.field public static final LINK_VER:Ljava/lang/String; = "linkver"

.field public static final LINK_VERSION:Ljava/lang/String; = "3.5"

.field public static final OBJS:Ljava/lang/String; = "objs"

.field static final OBJ_ACTION:Ljava/lang/String; = "action"

.field static final OBJ_DISPLAY_TYPE:Ljava/lang/String; = "disptype"

.field static final OBJ_HEIGHT:Ljava/lang/String; = "height"

.field static final OBJ_OBJTYPE:Ljava/lang/String; = "objtype"

.field static final OBJ_SRC:Ljava/lang/String; = "src"

.field static final OBJ_TEXT:Ljava/lang/String; = "text"

.field static final OBJ_WIDTH:Ljava/lang/String; = "width"

.field public static final TALK_MARKET_URL_PREFIX:Ljava/lang/String; = "market://details?id=com.kakao.talk&referrer="

.field public static final TALK_MARKET_URL_PREFIX_2:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.kakao.talk&referrer="


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
