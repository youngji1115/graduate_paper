.class public Lcom/cashwalk/cashwalk/util/network/model/Lotto;
.super Ljava/lang/Object;
.source "Lotto.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5eccc24f8854c8feL


# instance fields
.field public description:Ljava/lang/String;

.field public detailImgUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public pariticipants:I

.field public point:I

.field public title:Ljava/lang/String;

.field public winnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->pariticipants:I

    return-void
.end method
