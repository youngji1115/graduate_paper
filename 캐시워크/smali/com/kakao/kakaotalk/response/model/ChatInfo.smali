.class public Lcom/kakao/kakaotalk/response/model/ChatInfo;
.super Ljava/lang/Object;
.source "ChatInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kakao/auth/common/MessageSendable;


# static fields
.field public static final CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<",
            "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kakao/kakaotalk/response/model/ChatInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chatId:J

.field private final chatType:Ljava/lang/String;

.field private final displayMemberImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;

.field private final memberCount:I

.field private final memberImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/kakao/kakaotalk/response/model/ChatInfo$1;

    invoke-direct {v0}, Lcom/kakao/kakaotalk/response/model/ChatInfo$1;-><init>()V

    sput-object v0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    .line 143
    new-instance v0, Lcom/kakao/kakaotalk/response/model/ChatInfo$2;

    invoke-direct {v0}, Lcom/kakao/kakaotalk/response/model/ChatInfo$2;-><init>()V

    sput-object v0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->imageUrl:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberCount:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatType:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberImageUrlList:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->displayMemberImageList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 5
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/kakao/network/response/ResponseBody;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    .line 43
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->title:Ljava/lang/String;

    .line 44
    const-string v0, "image_url"

    invoke-virtual {p1, v0, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->imageUrl:Ljava/lang/String;

    .line 45
    const-string v0, "member_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberCount:I

    .line 46
    const-string v0, "chat_type"

    invoke-virtual {p1, v0, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatType:Ljava/lang/String;

    .line 47
    const-string v0, "member_image_url_list"

    sget-object v1, Lcom/kakao/network/response/ResponseBody;->STRING_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberImageUrlList:Ljava/util/List;

    .line 48
    const-string v0, "display_member_images"

    sget-object v1, Lcom/kakao/network/response/ResponseBody;->STRING_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->displayMemberImageList:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getChatId()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    return-wide v0
.end method

.method public getChatType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMemberImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->displayMemberImageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberCount:I

    return v0
.end method

.method public getMemberImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "chat_id"

    return-object v0
.end method

.method public isAllowedMsg()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++ id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title : "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl : "

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chatType : "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memberCount : "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->chatType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->memberImageUrlList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/kakao/kakaotalk/response/model/ChatInfo;->displayMemberImageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 141
    return-void
.end method
