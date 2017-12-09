.class public Lcom/kakao/kakaotalk/response/KakaoTalkProfile;
.super Ljava/lang/Object;
.source "KakaoTalkProfile.java"


# static fields
.field public static final CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<",
            "Lcom/kakao/kakaotalk/response/KakaoTalkProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final countryISO:Ljava/lang/String;

.field private final nickName:Ljava/lang/String;

.field private final profileImageUrl:Ljava/lang/String;

.field private final thumbnailUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile$1;

    invoke-direct {v0}, Lcom/kakao/kakaotalk/response/KakaoTalkProfile$1;-><init>()V

    sput-object v0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    return-void
.end method

.method constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 2
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "nickName"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->nickName:Ljava/lang/String;

    .line 36
    const-string v0, "profileImageURL"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->profileImageUrl:Ljava/lang/String;

    .line 37
    const-string v0, "thumbnailURL"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->thumbnailUrl:Ljava/lang/String;

    .line 38
    const-string v0, "countryISO"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->countryISO:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCountryISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->countryISO:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KakaoTalkProfile{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "nickName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", profileImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", thumbnailUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", countryISO=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/kakaotalk/response/KakaoTalkProfile;->countryISO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
