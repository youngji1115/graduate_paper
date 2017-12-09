.class public Lcom/kakao/friends/response/model/FriendInfo$NotAbailableOperationException;
.super Ljava/lang/Exception;
.source "FriendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/friends/response/model/FriendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotAbailableOperationException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMsg"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    return-void
.end method
