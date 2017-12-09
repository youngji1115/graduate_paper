.class public Lcom/cashwalk/cashwalk/util/model/RequestModel;
.super Ljava/lang/Object;
.source "RequestModel.java"


# instance fields
.field private longUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "longUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/model/RequestModel;->longUrl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getLongUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/model/RequestModel;->longUrl:Ljava/lang/String;

    return-object v0
.end method
