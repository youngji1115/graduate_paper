.class Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/StaxUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataExpression"
.end annotation


# instance fields
.field public expression:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public targetDepth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "targetDepth"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    .line 246
    iput p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    .line 247
    iput-object p3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    .line 248
    return-void
.end method
