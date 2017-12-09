.class public Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;
.super Ljava/lang/Object;
.source "AdBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;
    }
.end annotation


# instance fields
.field private data:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;-><init>(Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->data:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    .line 23
    return-void
.end method


# virtual methods
.method public getData()Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->data:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    return-object v0
.end method

.method public setData(Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;)V
    .locals 0
    .param p1, "data"    # Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;->data:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;

    .line 21
    return-void
.end method
