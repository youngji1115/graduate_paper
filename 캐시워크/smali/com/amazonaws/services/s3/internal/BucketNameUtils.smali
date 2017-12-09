.class public final enum Lcom/amazonaws/services/s3/internal/BucketNameUtils;
.super Ljava/lang/Enum;
.source "BucketNameUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/services/s3/internal/BucketNameUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

.field private static final MAX_BUCKET_NAME_LENGTH:I = 0x3f

.field private static final MIN_BUCKET_NAME_LENGTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    sput-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->$VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static exception(ZLjava/lang/String;)Z
    .locals 1
    .param p0, "exception"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDNSBucketName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidV2BucketName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isValidV2BucketName(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "throwOnError"    # Z

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x2e

    .line 79
    if-nez p0, :cond_0

    .line 80
    const-string v3, "Bucket name cannot be null"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    .line 149
    :goto_0
    return v3

    .line 83
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3f

    if-le v3, v4, :cond_2

    .line 86
    :cond_1
    const-string v3, "Bucket name should be between 3 and 63 characters long"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 91
    :cond_2
    const/4 v2, 0x0

    .line 93
    .local v2, "previous":C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 96
    .local v1, "next":C
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_3

    .line 97
    const-string v3, "Bucket name should not contain uppercase characters"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 102
    :cond_3
    const/16 v3, 0x20

    if-eq v1, v3, :cond_4

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_4

    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 103
    :cond_4
    const-string v3, "Bucket name should not contain white space"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 108
    :cond_5
    if-ne v1, v5, :cond_8

    .line 109
    if-ne v2, v5, :cond_6

    .line 110
    const-string v3, "Bucket name should not contain two adjacent periods"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 114
    :cond_6
    if-ne v2, v6, :cond_7

    .line 115
    const-string v3, "Bucket name should not contain dashes next to periods"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 124
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 125
    :cond_8
    if-ne v1, v6, :cond_9

    .line 126
    if-ne v2, v5, :cond_c

    .line 127
    const-string v3, "Bucket name should not contain dashes next to periods"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 131
    :cond_9
    const/16 v3, 0x30

    if-lt v1, v3, :cond_b

    const/16 v3, 0x39

    if-le v1, v3, :cond_a

    const/16 v3, 0x61

    if-lt v1, v3, :cond_b

    :cond_a
    const/16 v3, 0x7a

    if-le v1, v3, :cond_c

    .line 135
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bucket name should not contain \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 140
    :cond_c
    move v2, v1

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 143
    .end local v1    # "next":C
    :cond_d
    if-eq v2, v5, :cond_e

    if-ne v2, v6, :cond_f

    .line 144
    :cond_e
    const-string v3, "Bucket name should not end with \'-\' or \'.\'"

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->exception(ZLjava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 149
    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static validateBucketName(Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isValidV2BucketName(Ljava/lang/String;Z)Z

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/services/s3/internal/BucketNameUtils;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->$VALUES:[Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/internal/BucketNameUtils;

    return-object v0
.end method
