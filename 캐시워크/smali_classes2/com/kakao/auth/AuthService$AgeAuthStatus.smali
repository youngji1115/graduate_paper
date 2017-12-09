.class public final enum Lcom/kakao/auth/AuthService$AgeAuthStatus;
.super Ljava/lang/Enum;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgeAuthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/auth/AuthService$AgeAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum ALREADY_AGE_AUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum BAD_PARAMETERS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum CI_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum CLIENT_ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum LOWER_AGE_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum NOT_AUTHORIZED_AGE:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum SUCCESS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum UNAUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

.field public static final enum UNKOWN:Lcom/kakao/auth/AuthService$AgeAuthStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->SUCCESS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 117
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "CLIENT_ERROR"

    const/16 v2, -0x309

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CLIENT_ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 121
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, -0x191

    invoke-direct {v0, v1, v6, v2}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->UNAUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 125
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "BAD_PARAMETERS"

    const/16 v2, -0x1b8

    invoke-direct {v0, v1, v7, v2}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->BAD_PARAMETERS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 129
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "NOT_AUTHORIZED_AGE"

    const/16 v2, -0x1c2

    invoke-direct {v0, v1, v8, v2}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->NOT_AUTHORIZED_AGE:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 133
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "LOWER_AGE_LIMIT"

    const/4 v2, 0x5

    const/16 v3, -0x1c3

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->LOWER_AGE_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 137
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "ALREADY_AGE_AUTHORIZED"

    const/4 v2, 0x6

    const/16 v3, -0x1c4

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 141
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "EXCEED_AGE_CHECK_LIMIT"

    const/4 v2, 0x7

    const/16 v3, -0x1c5

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 145
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "AGE_AUTH_RESULT_MISMATCH"

    const/16 v2, 0x8

    const/16 v3, -0x1e0

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 149
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "CI_RESULT_MISMATCH"

    const/16 v2, 0x9

    const/16 v3, -0x1e1

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CI_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 153
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "ERROR"

    const/16 v2, 0xa

    const/16 v3, -0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 157
    new-instance v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    const-string v1, "UNKOWN"

    const/16 v2, 0xb

    const/16 v3, -0x3e7

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/auth/AuthService$AgeAuthStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->UNKOWN:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    .line 109
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/kakao/auth/AuthService$AgeAuthStatus;

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->SUCCESS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CLIENT_ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->UNAUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->BAD_PARAMETERS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->NOT_AUTHORIZED_AGE:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->LOWER_AGE_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->EXCEED_AGE_CHECK_LIMIT:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->AGE_AUTH_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->CI_RESULT_MISMATCH:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ERROR:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kakao/auth/AuthService$AgeAuthStatus;->UNKOWN:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->$VALUES:[Lcom/kakao/auth/AuthService$AgeAuthStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->value:I

    .line 162
    return-void
.end method

.method public static valueOf(I)Lcom/kakao/auth/AuthService$AgeAuthStatus;
    .locals 5
    .param p0, "i"    # I

    .prologue
    .line 169
    invoke-static {}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->values()[Lcom/kakao/auth/AuthService$AgeAuthStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 170
    .local v0, "value":Lcom/kakao/auth/AuthService$AgeAuthStatus;
    invoke-virtual {v0}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 174
    .end local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthStatus;
    :goto_1
    return-object v0

    .line 169
    .restart local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "value":Lcom/kakao/auth/AuthService$AgeAuthStatus;
    :cond_1
    sget-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->UNKOWN:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/auth/AuthService$AgeAuthStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;

    return-object v0
.end method

.method public static values()[Lcom/kakao/auth/AuthService$AgeAuthStatus;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->$VALUES:[Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v0}, [Lcom/kakao/auth/AuthService$AgeAuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/auth/AuthService$AgeAuthStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/kakao/auth/AuthService$AgeAuthStatus;->value:I

    return v0
.end method
