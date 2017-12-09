.class public Lcom/kakao/friends/response/model/FriendInfo;
.super Ljava/lang/Object;
.source "FriendInfo.java"

# interfaces
.implements Lcom/kakao/auth/common/MessageSendable;
.implements Lcom/kakao/usermgmt/response/model/User;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;,
        Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;,
        Lcom/kakao/friends/response/model/FriendInfo$Relation;
    }
.end annotation


# static fields
.field public static final CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<",
            "Lcom/kakao/friends/response/model/FriendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isAllowedMsg:Z

.field private final isAppRegistered:Z

.field private final profileNickname:Ljava/lang/String;

.field private final profileThumbnailImage:Ljava/lang/String;

.field private final relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

.field private final serviceUserId:J

.field private final talkOs:Ljava/lang/String;

.field private final userId:J

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$1;

    invoke-direct {v0}, Lcom/kakao/friends/response/model/FriendInfo$1;-><init>()V

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 6
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "id"

    invoke-virtual {p1, v0, v4, v5}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->userId:J

    .line 114
    const-string v0, "uuid"

    invoke-virtual {p1, v0, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->uuid:Ljava/lang/String;

    .line 115
    const-string v0, "service_user_id"

    invoke-virtual {p1, v0, v4, v5}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->serviceUserId:J

    .line 116
    const-string v0, "app_registered"

    invoke-virtual {p1, v0, v3}, Lcom/kakao/network/response/ResponseBody;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAppRegistered:Z

    .line 117
    const-string v0, "profile_nickname"

    invoke-virtual {p1, v0, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileNickname:Ljava/lang/String;

    .line 118
    const-string v0, "profile_thumbnail_image"

    invoke-virtual {p1, v0, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileThumbnailImage:Ljava/lang/String;

    .line 119
    const-string v0, "talk_os"

    invoke-virtual {p1, v0, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->talkOs:Ljava/lang/String;

    .line 120
    const-string v0, "allowed_msg"

    invoke-virtual {p1, v0, v3}, Lcom/kakao/network/response/ResponseBody;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAllowedMsg:Z

    .line 121
    const-string v0, "relation"

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optConverted(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$BodyConverter;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    .line 122
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->userId:J

    return-wide v0
.end method

.method public getProfileNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileThumbnailImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileThumbnailImage:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceUserId()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->serviceUserId:J

    return-wide v0
.end method

.method public getTalkOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->talkOs:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "uuid"

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowedMsg()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAllowedMsg:Z

    return v0
.end method

.method public isAppRegistered()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAppRegistered:Z

    return v0
.end method

.method public isStoryFriend()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    invoke-virtual {v0}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->isStoryFriend()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkFriend()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    invoke-virtual {v0}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->isTalkFriend()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++ uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId : "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kakao/friends/response/model/FriendInfo;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceUserId : "

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kakao/friends/response/model/FriendInfo;->serviceUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAppRegistered : "

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAppRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileNickname : "

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileThumbnailImage : "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->profileThumbnailImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", talkOs : "

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->talkOs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAllowedMsg : "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kakao/friends/response/model/FriendInfo;->isAllowedMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relation : "

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo;->relation:Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;

    invoke-virtual {v0}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
