.class public Lcom/amazonaws/internal/config/InternalConfig$Factory;
.super Ljava/lang/Object;
.source "InternalConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/internal/config/InternalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static final SINGELTON:Lcom/amazonaws/internal/config/InternalConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "config":Lcom/amazonaws/internal/config/InternalConfig;
    :try_start_0
    new-instance v0, Lcom/amazonaws/internal/config/InternalConfig;

    .end local v0    # "config":Lcom/amazonaws/internal/config/InternalConfig;
    invoke-direct {v0}, Lcom/amazonaws/internal/config/InternalConfig;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .restart local v0    # "config":Lcom/amazonaws/internal/config/InternalConfig;
    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig$Factory;->SINGELTON:Lcom/amazonaws/internal/config/InternalConfig;

    .line 186
    return-void

    .line 178
    .end local v0    # "config":Lcom/amazonaws/internal/config/InternalConfig;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/RuntimeException;
    throw v1

    .line 180
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fatal: Failed to load the internal config for AWS Android SDK"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalConfig()Lcom/amazonaws/internal/config/InternalConfig;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/amazonaws/internal/config/InternalConfig$Factory;->SINGELTON:Lcom/amazonaws/internal/config/InternalConfig;

    return-object v0
.end method
