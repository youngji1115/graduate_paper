.class public Lcom/cashwalk/cashwalk/util/model/ResponseModel;
.super Ljava/lang/Object;
.source "ResponseModel.java"


# instance fields
.field private id:Ljava/lang/String;

.field private kind:Ljava/lang/String;

.field private longUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/model/ResponseModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/model/ResponseModel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLongUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/model/ResponseModel;->longUrl:Ljava/lang/String;

    return-object v0
.end method
