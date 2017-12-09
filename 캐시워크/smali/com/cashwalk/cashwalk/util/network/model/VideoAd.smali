.class public Lcom/cashwalk/cashwalk/util/network/model/VideoAd;
.super Ljava/lang/Object;
.source "VideoAd.java"


# instance fields
.field public point:I

.field public trial:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->point:I

    .line 5
    iput v0, p0, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->trial:I

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->type:Ljava/lang/String;

    return-void
.end method
