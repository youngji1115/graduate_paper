.class public Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;
.super Ljava/lang/Object;
.source "AdBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "result"
.end annotation


# instance fields
.field private detailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detailUrl"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private partner:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "partner"
    .end annotation
.end field

.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;)V
    .locals 1
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->this$0:Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->partner:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->id:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->detailUrl:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPartner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->partner:Ljava/lang/String;

    return-object v0
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->detailUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->imageUrl:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPartner(Ljava/lang/String;)V
    .locals 0
    .param p1, "partner"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/network/retrofit/model/AdBanner$result;->partner:Ljava/lang/String;

    .line 42
    return-void
.end method
