.class public Lcom/amazonaws/ResponseMetadata;
.super Ljava/lang/Object;
.source "ResponseMetadata.java"


# static fields
.field public static final AWS_REQUEST_ID:Ljava/lang/String; = "AWS_REQUEST_ID"


# instance fields
.field protected final metadata:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lcom/amazonaws/ResponseMetadata;)V
    .locals 1
    .param p1, "originalResponseMetadata"    # Lcom/amazonaws/ResponseMetadata;

    .prologue
    .line 52
    iget-object v0, p1, Lcom/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    const-string v1, "AWS_REQUEST_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "{}"

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/ResponseMetadata;->metadata:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
