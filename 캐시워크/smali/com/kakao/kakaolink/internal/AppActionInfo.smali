.class public Lcom/kakao/kakaolink/internal/AppActionInfo;
.super Ljava/lang/Object;
.source "AppActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    }
.end annotation


# instance fields
.field private final deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

.field private final executeParam:Ljava/lang/String;

.field private final marketParam:Ljava/lang/String;

.field private final os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;


# direct methods
.method public constructor <init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "os"    # Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    .param p2, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .param p3, "executeParam"    # Ljava/lang/String;
    .param p4, "marketParam"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    .line 45
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->executeParam:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->marketParam:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .line 48
    return-void
.end method

.method public static createAndroidActionInfo(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo;
    .locals 2
    .param p0, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .param p1, "executeParam"    # Ljava/lang/String;
    .param p2, "marketParam"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/kakao/kakaolink/internal/AppActionInfo;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/kakao/kakaolink/internal/AppActionInfo;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIOSActionInfo(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo;
    .locals 2
    .param p0, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .param p1, "executeParam"    # Ljava/lang/String;
    .param p2, "marketParam"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/kakao/kakaolink/internal/AppActionInfo;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/kakao/kakaolink/internal/AppActionInfo;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "os"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-static {v2}, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->access$000(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "devicetype"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    invoke-virtual {v2}, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->executeParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string v1, "execparam"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->executeParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->marketParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    const-string v1, "marketparam"

    iget-object v2, p0, Lcom/kakao/kakaolink/internal/AppActionInfo;->marketParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_2
    return-object v0
.end method
