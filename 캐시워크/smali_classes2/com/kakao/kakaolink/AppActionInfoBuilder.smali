.class public Lcom/kakao/kakaolink/AppActionInfoBuilder;
.super Ljava/lang/Object;
.source "AppActionInfoBuilder.java"


# instance fields
.field private final deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

.field private executeParam:Ljava/lang/String;

.field private marketParam:Ljava/lang/String;

.field private final os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;


# direct methods
.method private constructor <init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)V
    .locals 0
    .param p1, "os"    # Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    .param p2, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    .line 43
    iput-object p2, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .line 44
    return-void
.end method

.method public static createAndroidActionInfoBuilder()Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/kakao/kakaolink/AppActionInfoBuilder;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/kakaolink/AppActionInfoBuilder;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)V

    return-object v0
.end method

.method public static createAndroidActionInfoBuilder(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 2
    .param p0, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .prologue
    .line 77
    new-instance v0, Lcom/kakao/kakaolink/AppActionInfoBuilder;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-direct {v0, v1, p0}, Lcom/kakao/kakaolink/AppActionInfoBuilder;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)V

    return-object v0
.end method

.method public static createiOSActionInfoBuilder()Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/kakao/kakaolink/AppActionInfoBuilder;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/kakaolink/AppActionInfoBuilder;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)V

    return-object v0
.end method

.method public static createiOSActionInfoBuilder(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 2
    .param p0, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .prologue
    .line 60
    new-instance v0, Lcom/kakao/kakaolink/AppActionInfoBuilder;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-direct {v0, v1, p0}, Lcom/kakao/kakaolink/AppActionInfoBuilder;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/kakao/kakaolink/internal/AppActionInfo;
    .locals 5

    .prologue
    .line 132
    new-instance v0, Lcom/kakao/kakaolink/internal/AppActionInfo;

    iget-object v1, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->os:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    iget-object v2, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->deviceType:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    iget-object v3, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->executeParam:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->marketParam:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kakao/kakaolink/internal/AppActionInfo;-><init>(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setExecuteParam(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 0
    .param p1, "executeParam"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->executeParam:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setExecuteParam(Ljava/util/Map;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/kakaolink/AppActionInfoBuilder;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "executeParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/kakao/util/helper/Utility;->buildQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->executeParam:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setMarketParam(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 0
    .param p1, "marketParam"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->marketParam:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public setMarketParam(Ljava/util/Map;)Lcom/kakao/kakaolink/AppActionInfoBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/kakaolink/AppActionInfoBuilder;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "marketParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/kakao/util/helper/Utility;->buildQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaolink/AppActionInfoBuilder;->marketParam:Ljava/lang/String;

    .line 124
    return-object p0
.end method
