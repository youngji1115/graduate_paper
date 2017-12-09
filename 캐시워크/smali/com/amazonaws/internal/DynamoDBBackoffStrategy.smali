.class public Lcom/amazonaws/internal/DynamoDBBackoffStrategy;
.super Lcom/amazonaws/internal/CustomBackoffStrategy;
.source "DynamoDBBackoffStrategy.java"


# static fields
.field public static final DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;

    invoke-direct {v0}, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;-><init>()V

    sput-object v0, Lcom/amazonaws/internal/DynamoDBBackoffStrategy;->DEFAULT:Lcom/amazonaws/internal/CustomBackoffStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amazonaws/internal/CustomBackoffStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackoffPeriod(I)I
    .locals 6
    .param p1, "retries"    # I

    .prologue
    .line 22
    if-gtz p1, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, p1, -0x1

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit8 v0, v1, 0x32

    .line 28
    .local v0, "delay":I
    if-gez v0, :cond_0

    .line 29
    const v0, 0x7fffffff

    goto :goto_0
.end method
