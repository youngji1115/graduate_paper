.class public Lcom/cashwalk/cashwalk/util/ad/CashwalkAdRequest;
.super Ljava/lang/Object;
.source "CashwalkAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/ad/CashwalkAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/util/ad/CashwalkAdRequest$Builder;)V
    .locals 0
    .param p1, "var1"    # Lcom/cashwalk/cashwalk/util/ad/CashwalkAdRequest$Builder;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
