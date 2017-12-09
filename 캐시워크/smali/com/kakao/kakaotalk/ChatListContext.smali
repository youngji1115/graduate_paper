.class public Lcom/kakao/kakaotalk/ChatListContext;
.super Lcom/kakao/auth/common/PageableContext;
.source "ChatListContext.java"


# instance fields
.field private final chatType:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

.field private final filterBuilder:Lcom/kakao/kakaotalk/ChatFilterBuilder;

.field private final fromId:I

.field private final limit:I

.field private final order:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kakao/kakaotalk/ChatFilterBuilder;IILjava/lang/String;)V
    .locals 1
    .param p1, "filterBuilder"    # Lcom/kakao/kakaotalk/ChatFilterBuilder;
    .param p2, "fromId"    # I
    .param p3, "limit"    # I
    .param p4, "order"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kakao/auth/common/PageableContext;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/kakao/kakaotalk/ChatListContext;->filterBuilder:Lcom/kakao/kakaotalk/ChatFilterBuilder;

    .line 52
    iput p2, p0, Lcom/kakao/kakaotalk/ChatListContext;->fromId:I

    .line 53
    iput p3, p0, Lcom/kakao/kakaotalk/ChatListContext;->limit:I

    .line 54
    iput-object p4, p0, Lcom/kakao/kakaotalk/ChatListContext;->order:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->chatType:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;IILjava/lang/String;)V
    .locals 1
    .param p1, "chatType"    # Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .param p2, "fromId"    # I
    .param p3, "limit"    # I
    .param p4, "order"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kakao/auth/common/PageableContext;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/kakao/kakaotalk/ChatListContext;->chatType:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    .line 44
    iput p2, p0, Lcom/kakao/kakaotalk/ChatListContext;->fromId:I

    .line 45
    iput p3, p0, Lcom/kakao/kakaotalk/ChatListContext;->limit:I

    .line 46
    iput-object p4, p0, Lcom/kakao/kakaotalk/ChatListContext;->order:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->filterBuilder:Lcom/kakao/kakaotalk/ChatFilterBuilder;

    .line 48
    return-void
.end method

.method public static createContext(Lcom/kakao/kakaotalk/ChatFilterBuilder;IILjava/lang/String;)Lcom/kakao/kakaotalk/ChatListContext;
    .locals 1
    .param p0, "filterBuilder"    # Lcom/kakao/kakaotalk/ChatFilterBuilder;
    .param p1, "fromId"    # I
    .param p2, "limit"    # I
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lcom/kakao/kakaotalk/ChatListContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kakao/kakaotalk/ChatListContext;-><init>(Lcom/kakao/kakaotalk/ChatFilterBuilder;IILjava/lang/String;)V

    return-object v0
.end method

.method public static createContext(Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;IILjava/lang/String;)Lcom/kakao/kakaotalk/ChatListContext;
    .locals 1
    .param p0, "chatType"    # Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .param p1, "fromId"    # I
    .param p2, "limit"    # I
    .param p3, "order"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/kakao/kakaotalk/ChatListContext;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kakao/kakaotalk/ChatListContext;-><init>(Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChatType()Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->chatType:Lcom/kakao/kakaotalk/KakaoTalkService$ChatType;

    return-object v0
.end method

.method public getFilterString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->filterBuilder:Lcom/kakao/kakaotalk/ChatFilterBuilder;

    invoke-virtual {v0}, Lcom/kakao/kakaotalk/ChatFilterBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->fromId:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->limit:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kakao/kakaotalk/ChatListContext;->order:Ljava/lang/String;

    return-object v0
.end method
