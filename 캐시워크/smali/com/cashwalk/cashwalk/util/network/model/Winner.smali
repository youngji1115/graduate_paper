.class public Lcom/cashwalk/cashwalk/util/network/model/Winner;
.super Ljava/lang/Object;
.source "Winner.java"


# instance fields
.field public created:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public owner:Ljava/lang/String;

.field public prize:Ljava/lang/String;

.field public profileUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->owner:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->prize:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->title:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->profileUrl:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    return-void
.end method
