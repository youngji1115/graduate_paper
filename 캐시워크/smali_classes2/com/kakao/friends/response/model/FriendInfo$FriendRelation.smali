.class public Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;
.super Ljava/lang/Object;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/response/model/FriendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendRelation"
.end annotation


# static fields
.field public static final CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kakao/network/response/ResponseBody$BodyConverter",
            "<",
            "Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

.field private final talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation$1;

    invoke-direct {v0}, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation$1;-><init>()V

    sput-object v0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->CONVERTER:Lcom/kakao/network/response/ResponseBody$BodyConverter;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 2
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "talk"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/friends/response/model/FriendInfo$Relation;->convert(Ljava/lang/String;)Lcom/kakao/friends/response/model/FriendInfo$Relation;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    .line 59
    const-string v0, "story"

    invoke-virtual {p1, v0, v1}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/friends/response/model/FriendInfo$Relation;->convert(Ljava/lang/String;)Lcom/kakao/friends/response/model/FriendInfo$Relation;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    .line 60
    return-void
.end method


# virtual methods
.method public isStoryFriend()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;

    const-string v1, "This method is abailable for talk friend type."

    invoke-direct {v0, v1}, Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkFriend()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->NONE:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;

    const-string v1, "This method is abailable for story friend type."

    invoke-direct {v0, v1}, Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    sget-object v1, Lcom/kakao/friends/response/model/FriendInfo$Relation;->FRIEND:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[talk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->talk:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", story : "

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kakao/friends/response/model/FriendInfo$FriendRelation;->story:Lcom/kakao/friends/response/model/FriendInfo$Relation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
