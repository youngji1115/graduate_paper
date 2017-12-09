.class public Lcom/cashwalk/cashwalk/util/network/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCouponList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Coupon;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 553
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/Coupon;-><init>()V

    .line 554
    .local v0, "coupon":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 556
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->id:Ljava/lang/String;

    .line 557
    const-string v5, "pinNo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->pin:Ljava/lang/String;

    .line 558
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->title:Ljava/lang/String;

    .line 560
    const-string v5, "expiredAt"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->expire:Ljava/lang/String;

    .line 561
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->imageUrl:Ljava/lang/String;

    .line 562
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 563
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->description:Ljava/lang/String;

    .line 565
    :cond_0
    const-string v5, "affiliate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 566
    const-string v5, "affiliate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->brand:Ljava/lang/String;

    .line 568
    :cond_1
    const-string v5, "delay"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 569
    const-string v5, "delay"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->delay:I

    .line 571
    :cond_2
    const-string v5, "remain"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 572
    const-string v5, "remain"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->remain:I

    .line 574
    :cond_3
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 575
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->status:I

    .line 576
    iget v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->status:I

    const/16 v6, 0xfa6

    if-ne v5, v6, :cond_6

    .line 577
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z

    .line 582
    :cond_4
    :goto_1
    const-string v5, "date"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 583
    new-instance v5, Lorg/joda/time/DateTime;

    const-string v6, "date"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->date:Lorg/joda/time/DateTime;

    .line 586
    :cond_5
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 579
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->used:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 588
    .end local v0    # "coupon":Lcom/cashwalk/cashwalk/util/network/model/Coupon;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    return-object v4
.end method

.method public static parseEventRaffle(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;
    .locals 5
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 855
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;-><init>()V

    .line 858
    .local v1, "eventRaffle":Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;
    :try_start_0
    const-string v2, "showEvent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    const-string v2, "showEvent"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->showEvent:Z

    .line 862
    :cond_0
    const-string v2, "prize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 863
    const-string v2, "prize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 864
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    const-string v3, "prize"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Prize;->id:Ljava/lang/String;

    .line 866
    :cond_1
    const-string v2, "prize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 867
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    const-string v3, "prize"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Prize;->title:Ljava/lang/String;

    .line 869
    :cond_2
    const-string v2, "prize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "imageUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 870
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    const-string v3, "prize"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "imageUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Prize;->imageUrl:Ljava/lang/String;

    .line 872
    :cond_3
    const-string v2, "prize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "point"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 873
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/EventRaffle;->prize:Lcom/cashwalk/cashwalk/util/network/model/Prize;

    const-string v3, "prize"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "point"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Prize;->point:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_4
    :goto_0
    return-object v1

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseFriend(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .locals 4
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 1027
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Friend;-><init>()V

    .line 1030
    .local v1, "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1031
    .local v2, "result":Lorg/json/JSONObject;
    const-string v3, "owner"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    const-string v3, "owner"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .line 1034
    :cond_0
    const-string v3, "friend"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1035
    const-string v3, "friend"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    .line 1037
    :cond_1
    const-string v3, "profileUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1038
    const-string v3, "profileUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 1040
    :cond_2
    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1041
    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .line 1043
    :cond_3
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1044
    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->phone:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    .end local v2    # "result":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v1

    .line 1047
    :catch_0
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseFriendList(Lorg/json/JSONObject;I)Ljava/util/List;
    .locals 11
    .param p0, "jo"    # Lorg/json/JSONObject;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 887
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :try_start_0
    const-string v6, "result"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 891
    .local v4, "result":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 892
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 893
    .local v5, "resultObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Friend;-><init>()V

    .line 895
    .local v1, "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 896
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    .line 897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://graph.facebook.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fb_"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/picture?type=large"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 903
    :cond_0
    :goto_1
    const-string v6, "owner"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 904
    const-string v6, "owner"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .line 906
    :cond_1
    const-string v6, "friend"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 907
    const-string v6, "friend"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    .line 909
    :cond_2
    const-string v6, "nickname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 910
    const-string v6, "nickname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .line 912
    :cond_3
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 913
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->phone:Ljava/lang/String;

    .line 915
    :cond_4
    const-string v6, "realName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 916
    const-string v6, "realName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    .line 919
    :cond_5
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 920
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 924
    :goto_2
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 925
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_a

    .line 926
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 899
    :cond_7
    const-string v6, "profileUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 900
    const-string v6, "profileUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 939
    .end local v1    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .end local v3    # "j":I
    .end local v4    # "result":Lorg/json/JSONArray;
    .end local v5    # "resultObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 943
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    return-object v2

    .line 922
    .restart local v1    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .restart local v3    # "j":I
    .restart local v4    # "result":Lorg/json/JSONArray;
    .restart local v5    # "resultObj":Lorg/json/JSONObject;
    :cond_9
    const/4 v6, -0x1

    :try_start_1
    iput v6, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    goto :goto_2

    .line 927
    :cond_a
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_b

    .line 928
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 929
    :cond_b
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, p1, :cond_c

    .line 930
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 931
    :cond_c
    if-ne p1, v10, :cond_6

    .line 932
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 935
    :cond_d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static parseFriendRank(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "objectItem"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/FriendRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :try_start_0
    const-string v8, "ranks"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1059
    .local v4, "rank":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_a

    .line 1060
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1061
    .local v5, "rankObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;-><init>()V

    .line 1063
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    const-string v8, "owner"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1064
    const-string v8, "owner"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    .line 1065
    const-string v8, "owner"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    .line 1068
    :cond_0
    const-string/jumbo v8, "step"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1069
    const-string/jumbo v8, "step"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    .line 1074
    :goto_1
    const-string v8, "friend"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1075
    const-string v8, "friend"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    .line 1078
    :cond_1
    const-string/jumbo v8, "totalSteps"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1079
    const-string/jumbo v8, "totalSteps"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    .line 1086
    :goto_2
    const-string v8, "nickname"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1087
    const-string v8, "nickname"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->nickname:Ljava/lang/String;

    .line 1089
    :cond_2
    const-string v8, "profileUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1090
    const-string v8, "profileUrl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    .line 1093
    :cond_3
    const-string/jumbo v8, "status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1094
    const-string/jumbo v8, "status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->status:I

    .line 1097
    :cond_4
    const-string v8, "date"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1098
    const-string v8, "date"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->date:Ljava/lang/String;

    .line 1100
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_6
    const/4 v8, 0x0

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1151
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    .end local v4    # "rank":Lorg/json/JSONArray;
    .end local v5    # "rankObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    return-object v3

    .line 1080
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    .restart local v4    # "rank":Lorg/json/JSONArray;
    .restart local v5    # "rankObject":Lorg/json/JSONObject;
    :cond_8
    :try_start_1
    const-string/jumbo v8, "totalStep"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1081
    const-string/jumbo v8, "totalStep"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    goto :goto_2

    .line 1083
    :cond_9
    const/4 v8, 0x0

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    goto :goto_2

    .line 1103
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    .end local v5    # "rankObject":Lorg/json/JSONObject;
    :cond_a
    const-string v8, "requests"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1104
    const-string v8, "requests"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1105
    .local v7, "requests":Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_7

    .line 1106
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1107
    .local v6, "requestObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;-><init>()V

    .line 1109
    .restart local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    const-string v8, "owner"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1110
    const-string v8, "owner"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    .line 1111
    const-string v8, "owner"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    .line 1114
    :cond_b
    const-string/jumbo v8, "step"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 1115
    const-string/jumbo v8, "step"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    .line 1120
    :goto_4
    const-string v8, "friend"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 1121
    const-string v8, "friend"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->friend:Ljava/lang/String;

    .line 1122
    const-string v8, "friend"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->sort_value:Ljava/lang/String;

    .line 1125
    :cond_c
    const-string/jumbo v8, "totalSteps"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 1126
    const-string/jumbo v8, "totalSteps"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    .line 1133
    :goto_5
    const-string v8, "nickname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1134
    const-string v8, "nickname"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->nickname:Ljava/lang/String;

    .line 1136
    :cond_d
    const-string v8, "profileUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1137
    const-string v8, "profileUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->profileUrl:Ljava/lang/String;

    .line 1140
    :cond_e
    const-string/jumbo v8, "status"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 1141
    const-string/jumbo v8, "status"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->status:I

    .line 1144
    :cond_f
    const-string v8, "date"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1145
    const-string v8, "date"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->date:Ljava/lang/String;

    .line 1148
    :cond_10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1117
    :cond_11
    const/4 v8, 0x0

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    goto :goto_4

    .line 1127
    :cond_12
    const-string/jumbo v8, "totalStep"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 1128
    const-string/jumbo v8, "totalStep"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I

    goto :goto_5

    .line 1130
    :cond_13
    const/4 v8, 0x0

    iput v8, v2, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->totalStep:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public static parseHabit(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Habit;
    .locals 8
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 499
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/Habit;-><init>()V

    .line 501
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/Habit;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->id:Ljava/lang/String;

    .line 502
    const-string/jumbo v5, "title"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->title:Ljava/lang/String;

    .line 504
    const-string v5, "days"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 505
    .local v0, "days":Lorg/json/JSONArray;
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v5, v3

    :goto_0
    aput-boolean v5, v6, v7

    .line 506
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v5, v3

    :goto_1
    aput-boolean v5, v6, v7

    .line 507
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x2

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v5, v3

    :goto_2
    aput-boolean v5, v6, v7

    .line 508
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x3

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    :goto_3
    aput-boolean v5, v6, v7

    .line 509
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x4

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v5, v3

    :goto_4
    aput-boolean v5, v6, v7

    .line 510
    iget-object v6, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v7, 0x5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_7

    move v5, v3

    :goto_5
    aput-boolean v5, v6, v7

    .line 511
    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->days:[Z

    const/4 v6, 0x6

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_8

    :goto_6
    aput-boolean v3, v5, v6

    .line 513
    const-string v3, "habitPage"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 514
    const-string v3, "habitPage"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->pageId:Ljava/lang/String;

    .line 517
    :cond_0
    const-string v3, "goal"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->goal:I

    .line 518
    const-string v3, "score"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->score:I

    .line 519
    const-string/jumbo v3, "unit"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->unit:Ljava/lang/String;

    .line 521
    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "days":Lorg/json/JSONArray;
    :cond_1
    :goto_7
    return-object v2

    .restart local v0    # "days":Lorg/json/JSONArray;
    :cond_2
    move v5, v4

    .line 505
    goto/16 :goto_0

    :cond_3
    move v5, v4

    .line 506
    goto/16 :goto_1

    :cond_4
    move v5, v4

    .line 507
    goto :goto_2

    :cond_5
    move v5, v4

    .line 508
    goto :goto_3

    :cond_6
    move v5, v4

    .line 509
    goto :goto_4

    :cond_7
    move v5, v4

    .line 510
    goto :goto_5

    :cond_8
    move v3, v4

    .line 511
    goto :goto_6

    .line 524
    .end local v0    # "days":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method public static parseHabitList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Habit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Habit;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 536
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 537
    .local v3, "jo":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseHabit(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Habit;

    move-result-object v2

    .line 538
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/Habit;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/Habit;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 545
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method public static parseHealthList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/News;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 154
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 156
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v5, "HEALTH"

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/News;-><init>()V

    .line 159
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->title:Ljava/lang/String;

    .line 160
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->imageUrl:Ljava/lang/String;

    .line 161
    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->url:Ljava/lang/String;

    .line 162
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->type:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static parseInvite(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Invite;
    .locals 3
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 801
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Invite;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Invite;-><init>()V

    .line 804
    .local v1, "invite":Lcom/cashwalk/cashwalk/util/network/model/Invite;
    :try_start_0
    const-string v2, "point"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 805
    const-string v2, "point"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Invite;->point:I

    .line 808
    :cond_0
    const-string v2, "count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    const-string v2, "count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Invite;->count:I

    .line 812
    :cond_1
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 813
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Invite;->code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :cond_2
    :goto_0
    return-object v1

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseLottoList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Lotto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Lotto;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_9

    .line 361
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 362
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;

    invoke-direct {v5}, Lcom/cashwalk/cashwalk/util/network/model/Lotto;-><init>()V

    .line 364
    .local v5, "lotto":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->id:Ljava/lang/String;

    .line 365
    const-string/jumbo v9, "title"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->title:Ljava/lang/String;

    .line 366
    const-string v9, "body"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 367
    const-string v9, "body"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->description:Ljava/lang/String;

    .line 369
    :cond_0
    const-string v9, "imageUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 370
    const-string v9, "imageUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->imgUrl:Ljava/lang/String;

    .line 372
    :cond_1
    const-string v9, "detailImageUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 373
    const-string v9, "detailImageUrl"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->detailImgUrl:Ljava/lang/String;

    .line 375
    :cond_2
    const-string v9, "point"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 376
    const-string v9, "point"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->point:I

    .line 378
    :cond_3
    const-string/jumbo v9, "winners"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 379
    const-string/jumbo v9, "winners"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 380
    .local v8, "winnersArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 381
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 382
    .local v7, "winnerObj":Lorg/json/JSONObject;
    new-instance v6, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v6}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 383
    .local v6, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    const-string v9, "nickname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 384
    const-string v9, "nickname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 386
    :cond_4
    const-string v9, "profileUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 387
    const-string v9, "profileUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 389
    :cond_5
    const-string v9, "date"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 390
    new-instance v9, Lorg/joda/time/DateTime;

    const-string v10, "date"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v9, v6, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    .line 393
    :cond_6
    iget-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->winnerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v2    # "j":I
    .end local v6    # "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    .end local v7    # "winnerObj":Lorg/json/JSONObject;
    .end local v8    # "winnersArray":Lorg/json/JSONArray;
    :cond_7
    const-string v9, "participants"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 397
    const-string v9, "participants"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Lcom/cashwalk/cashwalk/util/network/model/Lotto;->pariticipants:I

    .line 400
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v5    # "lotto":Lcom/cashwalk/cashwalk/util/network/model/Lotto;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    return-object v4
.end method

.method public static parseLottoWinnerList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Winner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Winner;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 1162
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1163
    .local v2, "jo":Lorg/json/JSONObject;
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/Winner;-><init>()V

    .line 1165
    .local v4, "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    const-string v5, "owner"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1166
    const-string v5, "owner"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->owner:Ljava/lang/String;

    .line 1169
    :cond_0
    const-string v5, "prize"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1170
    const-string v5, "prize"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->prize:Ljava/lang/String;

    .line 1173
    :cond_1
    const-string v5, "imageUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1174
    const-string v5, "imageUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->imageUrl:Ljava/lang/String;

    .line 1177
    :cond_2
    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1178
    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->title:Ljava/lang/String;

    .line 1181
    :cond_3
    const-string v5, "nickname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1182
    const-string v5, "nickname"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->nickname:Ljava/lang/String;

    .line 1185
    :cond_4
    const-string v5, "profileUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1186
    const-string v5, "profileUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->profileUrl:Ljava/lang/String;

    .line 1189
    :cond_5
    const-string v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1190
    const-string v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Winner;->created:Ljava/lang/String;

    .line 1193
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v4    # "winner":Lcom/cashwalk/cashwalk/util/network/model/Winner;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    return-object v3
.end method

.method public static parseNewsList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/News;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/News;-><init>()V

    .line 110
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->title:Ljava/lang/String;

    .line 111
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->imageUrl:Ljava/lang/String;

    .line 112
    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->url:Ljava/lang/String;

    .line 113
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->type:Ljava/lang/String;

    .line 115
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method public static parseNewsListOnly(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/News;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/News;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 129
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 131
    .local v3, "jo":Lorg/json/JSONObject;
    const-string v5, "NEWS"

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/News;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/News;-><init>()V

    .line 134
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->title:Ljava/lang/String;

    .line 135
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->imageUrl:Ljava/lang/String;

    .line 136
    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->url:Ljava/lang/String;

    .line 137
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/News;->type:Ljava/lang/String;

    .line 139
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/News;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static parsePoint(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Point;
    .locals 3
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 824
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Point;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Point;-><init>()V

    .line 827
    .local v1, "point":Lcom/cashwalk/cashwalk/util/network/model/Point;
    :try_start_0
    const-string v2, "currentPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    const-string v2, "currentPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->currentPoint:I

    .line 831
    :cond_0
    const-string v2, "expiredAtNextMonth"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 832
    const-string v2, "expiredAtNextMonth"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->expiredAtNextMonth:I

    .line 835
    :cond_1
    const-string/jumbo v2, "totalPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 836
    const-string/jumbo v2, "totalPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->totalPoint:I

    .line 839
    :cond_2
    const-string v2, "raffleUsed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 840
    const-string v2, "raffleUsed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->raffleUsed:I

    .line 843
    :cond_3
    const-string v2, "shopUsed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 844
    const-string v2, "shopUsed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Point;->shopUsed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    :cond_4
    :goto_0
    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseRecommendList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 12
    .param p0, "jo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v2, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :try_start_0
    const-string v8, "result"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 953
    .local v6, "result":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 954
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 955
    .local v7, "resultObj":Lorg/json/JSONObject;
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Friend;-><init>()V

    .line 957
    .local v1, "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 958
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "fb_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 959
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    .line 960
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    .line 961
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://graph.facebook.com/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "fb_"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/picture?type=large"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    .line 973
    :cond_0
    :goto_1
    const-string v8, "owner"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 974
    const-string v8, "owner"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    .line 976
    :cond_1
    const-string v8, "friend"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 977
    const-string v8, "friend"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    .line 979
    :cond_2
    const-string v8, "nickname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 980
    const-string v8, "nickname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->nickname:Ljava/lang/String;

    .line 982
    :cond_3
    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 983
    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->phone:Ljava/lang/String;

    .line 985
    :cond_4
    const-string v8, "realName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 986
    const-string v8, "realName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->realName:Ljava/lang/String;

    .line 989
    :cond_5
    const-string/jumbo v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 990
    const-string/jumbo v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 1002
    :goto_2
    const/4 v4, 0x0

    .line 1003
    .local v4, "isMyFriend":Z
    sget-object v8, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 1004
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    sget-object v8, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 1005
    sget-object v8, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v8, v8, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    iget-object v9, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1006
    const/4 v4, 0x1

    .line 1012
    .end local v3    # "i":I
    :cond_6
    if-nez v4, :cond_7

    .line 1013
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 963
    .end local v4    # "isMyFriend":Z
    :cond_8
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->id:Ljava/lang/String;

    .line 964
    const-string v8, "profileUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 965
    const-string v8, "profileUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1018
    .end local v1    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .end local v5    # "j":I
    .end local v6    # "result":Lorg/json/JSONArray;
    .end local v7    # "resultObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1022
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    return-object v2

    .line 969
    .restart local v1    # "friend":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    .restart local v5    # "j":I
    .restart local v6    # "result":Lorg/json/JSONArray;
    .restart local v7    # "resultObj":Lorg/json/JSONObject;
    :cond_a
    :try_start_1
    const-string v8, "profileUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 970
    const-string v8, "profileUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->profileUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 992
    :cond_b
    const/4 v8, -0x1

    iput v8, v1, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1004
    .restart local v3    # "i":I
    .restart local v4    # "isMyFriend":Z
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public static parseShopCategoryList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 257
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 258
    .local v7, "jo":Lorg/json/JSONObject;
    new-instance v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;

    invoke-direct {v5}, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;-><init>()V

    .line 260
    .local v5, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;
    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->id:Ljava/lang/String;

    .line 261
    const-string/jumbo v9, "title"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->title:Ljava/lang/String;

    .line 262
    const-string v9, "imageUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 263
    const-string v9, "imageUrl"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->imageUrl:Ljava/lang/String;

    .line 266
    :cond_0
    const-string v9, "affiliates"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 267
    const-string v9, "affiliates"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 269
    .local v2, "brands":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 270
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;-><init>()V

    .line 272
    .local v1, "brand":Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 273
    .local v0, "boj":Lorg/json/JSONObject;
    const-string/jumbo v9, "title"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->title:Ljava/lang/String;

    .line 274
    const-string v9, "id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->id:Ljava/lang/String;

    .line 275
    const-string v9, "imageUrl"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;->imageUrl:Ljava/lang/String;

    .line 277
    iget-object v9, v5, Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;->brandList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "boj":Lorg/json/JSONObject;
    .end local v1    # "brand":Lcom/cashwalk/cashwalk/util/network/model/ShopBrand;
    .end local v2    # "brands":Lorg/json/JSONArray;
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v5    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopCategory;
    .end local v7    # "jo":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v3

    .line 283
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8
.end method

.method public static parseShopItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .locals 4
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 324
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;-><init>()V

    .line 327
    .local v1, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    :try_start_0
    const-string v2, "goodsId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->id:Ljava/lang/String;

    .line 328
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    .line 329
    const-string v2, "category"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->category:Ljava/lang/String;

    .line 330
    const-string v2, "price"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    .line 331
    const-string v2, "affiliate"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    const-string v2, "affiliate"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 334
    :cond_0
    const-string v2, "imageUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    const-string v2, "imageUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->imageUrl:Ljava/lang/String;

    .line 337
    :cond_1
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->description:Ljava/lang/String;

    .line 340
    :cond_2
    const-string v2, "expiredAt"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 341
    new-instance v2, Lorg/joda/time/DateTime;

    const-string v3, "expiredAt"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->expireAt:Lorg/joda/time/DateTime;

    .line 343
    :cond_3
    const-string v2, "delay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 344
    const-string v2, "delay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->delay:I

    .line 346
    :cond_4
    const-string/jumbo v2, "validity"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 347
    const-string/jumbo v2, "validity"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->validity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_5
    :goto_0
    return-object v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseShopItemList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/ShopItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/ShopItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 295
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 296
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;-><init>()V

    .line 298
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    const-string v5, "goodsId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->id:Ljava/lang/String;

    .line 299
    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->title:Ljava/lang/String;

    .line 300
    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    const-string v5, "category"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->category:Ljava/lang/String;

    .line 303
    :cond_0
    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->price:I

    .line 304
    const-string v5, "affiliate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 305
    const-string v5, "affiliate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->brand:Ljava/lang/String;

    .line 307
    :cond_1
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 308
    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->imageUrl:Ljava/lang/String;

    .line 310
    :cond_2
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 311
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/ShopItem;->description:Ljava/lang/String;

    .line 314
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/ShopItem;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method

.method public static parseStatList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Stat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Stat;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 43
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v6, "setRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;

    invoke-direct {v7}, Lcom/cashwalk/cashwalk/util/network/model/Stat;-><init>()V

    .line 47
    .local v7, "stat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    const-string v8, "date"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 48
    new-instance v8, Lorg/joda/time/DateTime;

    const-string v9, "date"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->date:Lorg/joda/time/DateTime;

    .line 51
    :cond_0
    const-string/jumbo v8, "totalScore"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 52
    const-string/jumbo v8, "totalScore"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->steps:I

    .line 55
    :cond_1
    const-string v8, "records"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 56
    const-string v8, "records"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 57
    .local v5, "resultRecords":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 58
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_2
    iput-object v6, v7, Lcom/cashwalk/cashwalk/util/network/model/Stat;->records:Ljava/util/ArrayList;

    .line 63
    .end local v2    # "j":I
    .end local v5    # "resultRecords":Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v6    # "setRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "stat":Lcom/cashwalk/cashwalk/util/network/model/Stat;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method

.method public static parseStepBetList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/StepBet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/StepBet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 211
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 212
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/StepBet;-><init>()V

    .line 214
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/StepBet;
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->id:Ljava/lang/String;

    .line 215
    const-string/jumbo v5, "startDate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    new-instance v5, Lorg/joda/time/DateTime;

    const-string/jumbo v6, "startDate"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->startDate:Lorg/joda/time/DateTime;

    .line 218
    :cond_0
    const-string v5, "endDate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    new-instance v5, Lorg/joda/time/DateTime;

    const-string v6, "endDate"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->endDate:Lorg/joda/time/DateTime;

    .line 221
    :cond_1
    const-string v5, "bgUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    const-string v5, "bgUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->bgUrl:Ljava/lang/String;

    .line 224
    :cond_2
    const-string v5, "fee"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    const-string v5, "fee"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->point:I

    .line 227
    :cond_3
    const-string v5, "dropout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 228
    const-string v5, "dropout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->dropout:I

    .line 230
    :cond_4
    const-string v5, "limit"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 231
    const-string v5, "limit"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->limit:I

    .line 233
    :cond_5
    const-string v5, "participants"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 234
    const-string v5, "participants"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participants:I

    .line 236
    :cond_6
    const-string v5, "prizes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 237
    const-string v5, "prizes"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->prize:I

    .line 239
    :cond_7
    const-string v5, "participation"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 240
    const-string v5, "participation"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v2, Lcom/cashwalk/cashwalk/util/network/model/StepBet;->participation:Z

    .line 243
    :cond_8
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/StepBet;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    return-object v4
.end method

.method public static parseStepBetRank(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/Rank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 179
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 180
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/Rank;-><init>()V

    .line 182
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    const-string v5, "owner"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->id:Ljava/lang/String;

    .line 183
    const-string/jumbo v5, "step"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->steps:I

    .line 185
    const-string/jumbo v5, "totalSteps"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 186
    const-string/jumbo v5, "totalSteps"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I

    .line 191
    :cond_0
    :goto_1
    const-string v5, "nickname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    const-string v5, "nickname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->nickname:Ljava/lang/String;

    .line 194
    :cond_1
    const-string v5, "profileUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    const-string v5, "profileUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->profileUrl:Ljava/lang/String;

    .line 198
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .restart local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    .restart local v3    # "jo":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v5, "totalStep"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 188
    const-string/jumbo v5, "totalStep"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/cashwalk/cashwalk/util/network/model/Rank;->totalSteps:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/Rank;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method

.method public static parseStepBetStat(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;
    .locals 11
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    .line 596
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;-><init>()V

    .line 599
    .local v4, "stat":Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;
    :try_start_0
    const-string/jumbo v8, "user"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 601
    .local v7, "userObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "steps"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 602
    .local v5, "stepsArr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 603
    iget-object v9, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->steps:[I

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v3

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 606
    :cond_0
    const-string v8, "dropouts"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 607
    const-string v8, "dropouts"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 608
    .local v0, "dropArr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 609
    iget-object v9, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->pass:[I

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v3

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "dropArr":Lorg/json/JSONArray;
    :cond_1
    const-string v8, "dropout"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 614
    const-string v8, "dropout"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 615
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropout:Z

    .line 619
    :cond_2
    const-string/jumbo v8, "totalSteps"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->stepsTotal:I

    .line 621
    const-string/jumbo v8, "total"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 623
    .local v6, "totalObj":Lorg/json/JSONObject;
    const-string v8, "dropouts"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 624
    .local v1, "dropArr2":Lorg/json/JSONArray;
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 625
    iget-object v9, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropouts:[I

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v9, v3

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 628
    :cond_3
    const-string v8, "averageSteps"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->avgSteps:I

    .line 629
    const-string v8, "participants"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->participants:I

    .line 630
    const-string/jumbo v8, "totalDropouts"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 631
    const-string/jumbo v8, "totalDropouts"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/cashwalk/cashwalk/util/network/model/StepBetStat;->dropoutsTotal:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v1    # "dropArr2":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "stepsArr":Lorg/json/JSONArray;
    .end local v6    # "totalObj":Lorg/json/JSONObject;
    .end local v7    # "userObj":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    return-object v4

    .line 633
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static parseStepBetTimelineComment(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 645
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 647
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;-><init>()V

    .line 648
    .local v2, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;
    new-instance v5, Lorg/joda/time/DateTime;

    const-string v6, "date"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->dateTime:Lorg/joda/time/DateTime;

    .line 649
    const-string v5, "date"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->dateString:Ljava/lang/String;

    .line 651
    const-string v5, "body"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 652
    const-string v5, "body"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->body:Ljava/lang/String;

    .line 654
    :cond_0
    const-string v5, "owner"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 655
    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v6, "owner"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    .line 657
    :cond_1
    const-string v5, "nickname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 658
    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v6, "nickname"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 660
    :cond_2
    const-string v5, "profileUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 661
    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v6, "profileUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 664
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v2    # "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;
    .end local v3    # "jo":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-object v4
.end method

.method public static parseStepBetTimelineItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    .locals 6
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 675
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;-><init>()V

    .line 678
    .local v1, "item":Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;
    if-eqz p0, :cond_12

    .line 679
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    .line 682
    :cond_0
    const-string v2, "owner"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 683
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v3, "owner"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    .line 685
    :cond_1
    const-string/jumbo v2, "stepbet"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 686
    const-string/jumbo v2, "stepbet"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 688
    :cond_2
    const-string v2, "body"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 689
    const-string v2, "body"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->body:Ljava/lang/String;

    .line 691
    :cond_3
    const-string v2, "nickname"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 692
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v3, "nickname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 694
    :cond_4
    const-string v2, "profileUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 695
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v3, "profileUrl"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 697
    :cond_5
    const-string v2, "commentCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 698
    const-string v2, "commentCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->commentCount:I

    .line 700
    :cond_6
    const-string v2, "likeCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 701
    const-string v2, "likeCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->likeCount:I

    .line 703
    :cond_7
    const-string v2, "addCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 704
    const-string v2, "addCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->addCount:I

    .line 706
    :cond_8
    const-string/jumbo v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 707
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->habit:Lcom/cashwalk/cashwalk/util/network/model/Habit;

    const-string/jumbo v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/Habit;->type:Ljava/lang/String;

    .line 709
    :cond_9
    const-string v2, "address"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 710
    const-string v2, "address"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->address:Ljava/lang/String;

    .line 712
    :cond_a
    const-string v2, "raffle"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 713
    const-string v2, "raffle"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->raffle:Z

    .line 715
    :cond_b
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 716
    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->title:Ljava/lang/String;

    .line 718
    :cond_c
    const-string v2, "hitCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 719
    const-string v2, "hitCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->hitCount:I

    .line 722
    :cond_d
    const-string v2, "loc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 723
    const-string v2, "loc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_e

    .line 725
    :try_start_1
    iget-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->location:Lcom/cashwalk/cashwalk/util/network/model/LatLng;

    const-string v2, "loc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/cashwalk/cashwalk/util/network/model/LatLng;->lat:D

    .line 726
    iget-object v3, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->location:Lcom/cashwalk/cashwalk/util/network/model/LatLng;

    const-string v2, "loc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/cashwalk/cashwalk/util/network/model/LatLng;->lng:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 732
    :cond_e
    :goto_0
    :try_start_2
    const-string v2, "rank"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 733
    iget-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    const-string v3, "rank"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->rank:I

    .line 735
    :cond_f
    const-string v2, "imageUrls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 736
    const-string v2, "imageUrls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 737
    const-string v2, "imageUrls"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->imgUrl:Ljava/lang/String;

    .line 741
    :cond_10
    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 742
    new-instance v2, Lorg/joda/time/DateTime;

    const-string v3, "date"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->dateTime:Lorg/joda/time/DateTime;

    .line 755
    :goto_1
    return-object v1

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 751
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 752
    const/4 v1, 0x0

    goto :goto_1

    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    .line 748
    :cond_12
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static parseStepBetTimelineList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 763
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 765
    .local v2, "jo":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 766
    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 767
    invoke-static {v2}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v2    # "jo":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 776
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method public static parseUser(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/User;
    .locals 4
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 410
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 413
    .local v1, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    .line 415
    const-string v2, "profileUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    const-string v2, "profileUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 419
    :cond_0
    const-string v2, "gender"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    const-string v2, "gender"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->gender:Ljava/lang/String;

    .line 423
    :cond_1
    const-string v2, "nickname"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 424
    const-string v2, "nickname"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 427
    :cond_2
    const-string v2, "point"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 428
    const-string v2, "point"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->point:I

    .line 431
    :cond_3
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 432
    const-string v2, "height"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->height:I

    .line 435
    :cond_4
    const-string/jumbo v2, "weight"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 436
    const-string/jumbo v2, "weight"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->weight:I

    .line 439
    :cond_5
    const-string v2, "createdAt"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 440
    new-instance v2, Lorg/joda/time/DateTime;

    const-string v3, "createdAt"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->createdAt:Lorg/joda/time/DateTime;

    .line 443
    :cond_6
    const-string v2, "birth"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 444
    new-instance v2, Lorg/joda/time/DateTime;

    const-string v3, "birth"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->birthday:Lorg/joda/time/DateTime;

    .line 447
    :cond_7
    const-string v2, "recommendPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 448
    const-string v2, "recommendPoint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->recommendPoint:I

    .line 451
    :cond_8
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 452
    const-string v2, "code"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->code:Ljava/lang/String;

    .line 455
    :cond_9
    const-string v2, "kakao"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 456
    const-string v2, "kakao"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    .line 459
    :cond_a
    const-string v2, "fb"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 460
    const-string v2, "fb"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->fbUid:Ljava/lang/String;

    .line 463
    :cond_b
    const-string v2, "bgImageUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 464
    const-string v2, "bgImageUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    .line 467
    :cond_c
    const-string v2, "fb"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 468
    const-string v2, "coachImageUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->coachImageUrl:Ljava/lang/String;

    .line 471
    :cond_d
    const-string/jumbo v2, "uid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 472
    const-string/jumbo v2, "uid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->anonymousId:Ljava/lang/String;

    .line 475
    :cond_e
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 476
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->phone:Ljava/lang/String;

    .line 479
    :cond_f
    const-string v2, "countryCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 480
    const-string v2, "countryCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->countryCode:Ljava/lang/String;

    .line 483
    :cond_10
    const-string v2, "requestCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 484
    const-string v2, "requestCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->requestCount:I

    .line 487
    :cond_11
    const-string v2, "smsAuth"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 488
    const-string v2, "smsAuth"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cashwalk/cashwalk/util/network/model/User;->smsAuth:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_12
    :goto_0
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseVideoCount(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "ja"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cashwalk/cashwalk/util/network/model/VideoAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/VideoAd;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 77
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    .local v2, "jo":Lorg/json/JSONObject;
    new-instance v4, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;

    invoke-direct {v4}, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;-><init>()V

    .line 80
    .local v4, "videoAd":Lcom/cashwalk/cashwalk/util/network/model/VideoAd;
    const-string v5, "point"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    const-string v5, "point"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->point:I

    .line 84
    :cond_0
    const-string/jumbo v5, "trial"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    const-string/jumbo v5, "trial"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->trial:I

    .line 88
    :cond_1
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/VideoAd;->type:Ljava/lang/String;

    .line 92
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v4    # "videoAd":Lcom/cashwalk/cashwalk/util/network/model/VideoAd;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v3
.end method

.method public static parseWeather(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Weather;
    .locals 4
    .param p0, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 780
    new-instance v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/util/network/model/Weather;-><init>()V

    .line 783
    .local v1, "w":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    :try_start_0
    const-string v2, "grid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->city:Ljava/lang/String;

    .line 784
    const-string v2, "grid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "county"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->county:Ljava/lang/String;

    .line 785
    const-string v2, "grid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "village"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->villiage:Ljava/lang/String;

    .line 786
    const-string/jumbo v2, "wind"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "wspd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->wind:D

    .line 787
    const-string v2, "precipitation"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sinceOntime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->rain:D

    .line 788
    const-string/jumbo v2, "temperature"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "tc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempNow:D

    .line 789
    const-string/jumbo v2, "temperature"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "tmin"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempLow:D

    .line 790
    const-string/jumbo v2, "temperature"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "tmax"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempHigh:D

    .line 791
    const-string v2, "sky"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->sky:Ljava/lang/String;

    .line 792
    const-string v2, "sky"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    return-object v1

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
