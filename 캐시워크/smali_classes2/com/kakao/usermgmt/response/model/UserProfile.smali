.class public Lcom/kakao/usermgmt/response/model/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/kakao/usermgmt/response/model/User;
.implements Landroid/os/Parcelable;


# static fields
.field private static final CACHE_FRIEND_UUID:Ljava/lang/String; = "com.kakao.user.uuid"

.field private static final CACHE_NICKNAME:Ljava/lang/String; = "com.kakao.user.nickname"

.field private static final CACHE_PROFILE_PATH:Ljava/lang/String; = "com.kakao.user.profilepath"

.field private static final CACHE_REMAINING_GRUOP_MSG_COUNT:Ljava/lang/String; = "com.kakao.user.remaininggroupmsgcount"

.field private static final CACHE_REMAINING_INVITE_COUNT:Ljava/lang/String; = "com.kakao.user.remaininginvitecount"

.field private static final CACHE_SERVICE_USER_ID:Ljava/lang/String; = "com.kakao.user.serviceuserid"

.field private static final CACHE_THUMBNAIL_PATH:Ljava/lang/String; = "com.kakao.user.thumbbnailpath"

.field private static final CACHE_USER_ID:Ljava/lang/String; = "com.kakao.user.userId"

.field private static final CACHE_USER_PREFIX:Ljava/lang/String; = "com.kakao.user.properties."

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kakao/usermgmt/response/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:J

.field private nickname:Ljava/lang/String;

.field private profileImagePath:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remainingGroupMsgCount:I

.field private final remainingInviteCount:I

.field private final serviceUserId:J

.field private thumbnailImagePath:Ljava/lang/String;

.field private final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/kakao/usermgmt/response/model/UserProfile$1;

    invoke-direct {v0}, Lcom/kakao/usermgmt/response/model/UserProfile$1;-><init>()V

    sput-object v0, Lcom/kakao/usermgmt/response/model/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    .line 108
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 109
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    .line 64
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/kakao/network/response/ResponseBody;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    .line 65
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 66
    new-instance v0, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;

    const-string v1, "User is called but the result user is null."

    invoke-direct {v0, v1}, Lcom/kakao/network/response/ResponseBody$ResponseBodyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const-string v0, "uuid"

    invoke-virtual {p1, v0, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    .line 70
    const-string v0, "service_user_id"

    invoke-virtual {p1, v0, v4, v5}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    .line 71
    const-string v0, "remaining_invite_count"

    invoke-virtual {p1, v0, v3}, Lcom/kakao/network/response/ResponseBody;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    .line 72
    const-string v0, "remaining_group_msg_count"

    invoke-virtual {p1, v0, v3}, Lcom/kakao/network/response/ResponseBody;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    .line 74
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "properties"

    invoke-virtual {p1, v0}, Lcom/kakao/network/response/ResponseBody;->getBody(Ljava/lang/String;)Lcom/kakao/network/response/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/network/response/ResponseBody;->toMap(Lcom/kakao/network/response/ResponseBody;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    const-string v1, "nickname"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    const-string v1, "thumbnail_image"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    const-string v1, "profile_image"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/kakao/util/helper/SharedPreferencesCache;)V
    .locals 2
    .param p1, "cache"    # Lcom/kakao/util/helper/SharedPreferencesCache;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    .line 87
    const-string v0, "com.kakao.user.userId"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    .line 88
    const-string v0, "com.kakao.user.nickname"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    .line 89
    const-string v0, "com.kakao.user.thumbbnailpath"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    .line 90
    const-string v0, "com.kakao.user.profilepath"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    .line 91
    const-string v0, "com.kakao.user.properties."

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    .line 93
    const-string v0, "com.kakao.user.uuid"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    .line 94
    const-string v0, "com.kakao.user.serviceuserid"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    .line 95
    const-string v0, "com.kakao.user.remaininginvitecount"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    .line 96
    const-string v0, "com.kakao.user.remaininggroupmsgcount"

    invoke-virtual {p1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    .line 97
    return-void
.end method

.method public static loadFromCache()Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/kakao/auth/Session;->getAppCache()Lcom/kakao/util/helper/SharedPreferencesCache;

    move-result-object v0

    .line 206
    .local v0, "cache":Lcom/kakao/util/helper/SharedPreferencesCache;
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/kakao/usermgmt/response/model/UserProfile;

    invoke-direct {v1, v0}, Lcom/kakao/usermgmt/response/model/UserProfile;-><init>(Lcom/kakao/util/helper/SharedPreferencesCache;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingGroupMsgCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    return v0
.end method

.method public getRemainingInviteCount()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    return v0
.end method

.method public getServiceUserId()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    return-wide v0
.end method

.method public getThumbnailImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public saveUserToCache()V
    .locals 6

    .prologue
    .line 217
    invoke-static {}, Lcom/kakao/auth/Session;->getAppCache()Lcom/kakao/util/helper/SharedPreferencesCache;

    move-result-object v1

    .line 218
    .local v1, "cache":Lcom/kakao/util/helper/SharedPreferencesCache;
    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "com.kakao.user.userId"

    iget-wide v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    const-string v3, "com.kakao.user.nickname"

    iget-object v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v3, "com.kakao.user.thumbbnailpath"

    iget-object v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v3, "com.kakao.user.profilepath"

    iget-object v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v3, "com.kakao.user.uuid"

    iget-object v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v3, "com.kakao.user.serviceuserid"

    iget-wide v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    const-string v3, "com.kakao.user.remaininginvitecount"

    iget v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v3, "com.kakao.user.remaininggroupmsgcount"

    iget v4, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v3, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.kakao.user.properties."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/kakao/util/helper/SharedPreferencesCache;->save(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserProfile{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "nickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", thumbnailImagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ", profileImagePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ", code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, ", serviceUserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", remainingInviteCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, ", remainingGroupMsgCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateUserProfile(Ljava/util/Map;)Lcom/kakao/usermgmt/response/model/UserProfile;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/usermgmt/response/model/UserProfile;"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 247
    const-string v3, "nickname"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "nickname":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 249
    iput-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    .line 252
    :cond_0
    const-string v3, "thumbnail_image"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    .local v2, "thumbnailPath":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 254
    iput-object v2, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    .line 257
    :cond_1
    const-string v3, "profile_image"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    .local v1, "profilePath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 259
    iput-object v1, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    .line 262
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 263
    iget-object v3, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 266
    .end local v0    # "nickname":Ljava/lang/String;
    .end local v1    # "profilePath":Ljava/lang/String;
    .end local v2    # "thumbnailPath":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->thumbnailImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->profileImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-wide v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->serviceUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingInviteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->remainingGroupMsgCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Lcom/kakao/usermgmt/response/model/UserProfile;->properties:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 304
    return-void
.end method
