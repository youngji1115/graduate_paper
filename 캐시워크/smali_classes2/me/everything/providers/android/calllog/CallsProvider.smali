.class public Lme/everything/providers/android/calllog/CallsProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "CallsProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getCalls()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/calllog/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v1, Lme/everything/providers/android/calllog/Call;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/calllog/Call;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/calllog/CallsProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 24
    .local v0, "calls":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/calllog/Call;>;"
    return-object v0
.end method
