.class final Lcom/amazonaws/util/DateUtils$1;
.super Ljava/lang/ThreadLocal;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/util/DateUtils;->getSimpleDateFormat(Ljava/lang/String;)Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/text/SimpleDateFormat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/util/DateUtils$1;->val$pattern:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/amazonaws/util/DateUtils$1;->initialValue()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/amazonaws/util/DateUtils$1;->val$pattern:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 74
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/amazonaws/util/DateUtils;->access$000()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 76
    return-object v0
.end method
