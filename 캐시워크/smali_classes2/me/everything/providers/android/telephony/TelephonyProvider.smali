.class public Lme/everything/providers/android/telephony/TelephonyProvider;
.super Lme/everything/providers/core/AbstractProvider;
.source "TelephonyProvider.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/everything/providers/android/telephony/TelephonyProvider$1;,
        Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lme/everything/providers/core/AbstractProvider;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCarriers()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/telephony/Carrier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v1, Lme/everything/providers/android/telephony/Carrier;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/telephony/Carrier;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 109
    .local v0, "carriers":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Carrier;>;"
    return-object v0
.end method

.method public getConversations()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/telephony/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lme/everything/providers/android/telephony/Conversation;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/telephony/Conversation;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 89
    .local v0, "conversations":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Conversation;>;"
    return-object v0
.end method

.method public getMms(Lme/everything/providers/android/telephony/TelephonyProvider$Filter;)Lme/everything/providers/core/Data;
    .locals 4
    .param p1, "filter"    # Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/telephony/TelephonyProvider$Filter;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/telephony/Mms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lme/everything/providers/android/telephony/TelephonyProvider$1;->$SwitchMap$me$everything$providers$android$telephony$TelephonyProvider$Filter:[I

    invoke-virtual {p1}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 78
    :goto_0
    const-class v2, Lme/everything/providers/android/telephony/Mms;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 79
    .local v0, "Mms":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Mms;>;"
    return-object v0

    .line 63
    .end local v0    # "Mms":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Mms;>;"
    :pswitch_0
    sget-object v1, Lme/everything/providers/android/telephony/Mms;->uri:Landroid/net/Uri;

    .line 64
    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v1, Lme/everything/providers/android/telephony/Mms;->uriInbox:Landroid/net/Uri;

    .line 67
    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v1, Lme/everything/providers/android/telephony/Mms;->uriOutbox:Landroid/net/Uri;

    .line 70
    goto :goto_0

    .line 72
    :pswitch_3
    sget-object v1, Lme/everything/providers/android/telephony/Mms;->uriSent:Landroid/net/Uri;

    .line 73
    goto :goto_0

    .line 75
    :pswitch_4
    sget-object v1, Lme/everything/providers/android/telephony/Mms;->uriDraft:Landroid/net/Uri;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSms(Lme/everything/providers/android/telephony/TelephonyProvider$Filter;)Lme/everything/providers/core/Data;
    .locals 4
    .param p1, "filter"    # Lme/everything/providers/android/telephony/TelephonyProvider$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/everything/providers/android/telephony/TelephonyProvider$Filter;",
            ")",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/telephony/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lme/everything/providers/android/telephony/TelephonyProvider$1;->$SwitchMap$me$everything$providers$android$telephony$TelephonyProvider$Filter:[I

    invoke-virtual {p1}, Lme/everything/providers/android/telephony/TelephonyProvider$Filter;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 50
    :goto_0
    const-class v2, Lme/everything/providers/android/telephony/Sms;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 51
    .local v0, "sms":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Sms;>;"
    return-object v0

    .line 35
    .end local v0    # "sms":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Sms;>;"
    :pswitch_0
    sget-object v1, Lme/everything/providers/android/telephony/Sms;->uri:Landroid/net/Uri;

    .line 36
    goto :goto_0

    .line 38
    :pswitch_1
    sget-object v1, Lme/everything/providers/android/telephony/Sms;->uriInbox:Landroid/net/Uri;

    .line 39
    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v1, Lme/everything/providers/android/telephony/Sms;->uriOutbox:Landroid/net/Uri;

    .line 42
    goto :goto_0

    .line 44
    :pswitch_3
    sget-object v1, Lme/everything/providers/android/telephony/Sms;->uriSent:Landroid/net/Uri;

    .line 45
    goto :goto_0

    .line 47
    :pswitch_4
    sget-object v1, Lme/everything/providers/android/telephony/Sms;->uriDraft:Landroid/net/Uri;

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getThreads()Lme/everything/providers/core/Data;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lme/everything/providers/core/Data",
            "<",
            "Lme/everything/providers/android/telephony/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v1, Lme/everything/providers/android/telephony/Thread;->uri:Landroid/net/Uri;

    const-class v2, Lme/everything/providers/android/telephony/Thread;

    invoke-virtual {p0, v1, v2}, Lme/everything/providers/android/telephony/TelephonyProvider;->getContentTableData(Landroid/net/Uri;Ljava/lang/Class;)Lme/everything/providers/core/Data;

    move-result-object v0

    .line 99
    .local v0, "threads":Lme/everything/providers/core/Data;, "Lme/everything/providers/core/Data<Lme/everything/providers/android/telephony/Thread;>;"
    return-object v0
.end method
