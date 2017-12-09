.class public Lcom/kakao/kakaolink/AppActionBuilder;
.super Ljava/lang/Object;
.source "AppActionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    }
.end annotation


# instance fields
.field private final appActionInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kakao/kakaolink/internal/AppActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    .line 69
    return-void
.end method


# virtual methods
.method public addActionInfo(Lcom/kakao/kakaolink/internal/AppActionInfo;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 1
    .param p1, "appActionInfo"    # Lcom/kakao/kakaolink/internal/AppActionInfo;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-object p0
.end method

.method public build()Lcom/kakao/kakaolink/internal/Action;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lcom/kakao/kakaolink/AppActionBuilder;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    iget-object v2, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/kakao/kakaolink/internal/AppActionInfo;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/internal/AppActionInfo;

    invoke-static {v1, v0}, Lcom/kakao/kakaolink/internal/Action;->newActionApp(Ljava/lang/String;[Lcom/kakao/kakaolink/internal/AppActionInfo;)Lcom/kakao/kakaolink/internal/Action;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidExecuteURLParam(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 1
    .param p1, "executeURLParam"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kakao/kakaolink/AppActionBuilder;->setAndroidExecuteURLParam(Ljava/lang/String;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)Lcom/kakao/kakaolink/AppActionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidExecuteURLParam(Ljava/lang/String;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 2
    .param p1, "executeURLParam"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/kakao/kakaolink/internal/AppActionInfo;->createAndroidActionInfo(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo;

    move-result-object v0

    .line 119
    .local v0, "androidAppActionInfo":Lcom/kakao/kakaolink/internal/AppActionInfo;
    iget-object v1, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-object p0
.end method

.method public setIOSExecuteURLParam(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 2
    .param p1, "executeURLParam"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {v1, p1, v1}, Lcom/kakao/kakaolink/internal/AppActionInfo;->createIOSActionInfo(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo;

    move-result-object v0

    .line 131
    .local v0, "iosAppActionInfo":Lcom/kakao/kakaolink/internal/AppActionInfo;
    iget-object v1, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public setIOSExecuteURLParam(Ljava/lang/String;Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 2
    .param p1, "executeURLParam"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    const/4 v1, 0x0

    invoke-static {p2, p1, v1}, Lcom/kakao/kakaolink/internal/AppActionInfo;->createIOSActionInfo(Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo;

    move-result-object v0

    .line 144
    .local v0, "iosAppActionInfo":Lcom/kakao/kakaolink/internal/AppActionInfo;
    iget-object v1, p0, Lcom/kakao/kakaolink/AppActionBuilder;->appActionInfos:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kakao/kakaolink/AppActionBuilder;->url:Ljava/lang/String;

    .line 88
    return-object p0
.end method
