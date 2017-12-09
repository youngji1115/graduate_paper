.class public final enum Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
.super Ljava/lang/Enum;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/everything/providers/android/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/everything/providers/android/telephony/TelephonyProvider$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

.field public static final enum ALL:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

.field public static final enum DRAFT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

.field public static final enum INBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

.field public static final enum OUTBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

.field public static final enum SENT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->ALL:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    .line 20
    new-instance v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    const-string v1, "INBOX"

    invoke-direct {v0, v1, v3}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->INBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    .line 21
    new-instance v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    const-string v1, "OUTBOX"

    invoke-direct {v0, v1, v4}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->OUTBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    .line 22
    new-instance v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->SENT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    .line 23
    new-instance v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    const-string v1, "DRAFT"

    invoke-direct {v0, v1, v6}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->DRAFT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    sget-object v1, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->ALL:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    aput-object v1, v0, v2

    sget-object v1, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->INBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    aput-object v1, v0, v3

    sget-object v1, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->OUTBOX:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    aput-object v1, v0, v4

    sget-object v1, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->SENT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    aput-object v1, v0, v5

    sget-object v1, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->DRAFT:Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    aput-object v1, v0, v6

    sput-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->$VALUES:[Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    return-object v0
.end method

.method public static values()[Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->$VALUES:[Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    invoke-virtual {v0}, [Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/everything/providers/android/telephony/TelephonyProvider$Filter;

    return-object v0
.end method
