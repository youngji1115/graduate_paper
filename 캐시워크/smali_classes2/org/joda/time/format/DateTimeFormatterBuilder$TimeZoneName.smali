.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneName"
.end annotation


# static fields
.field static final LONG_NAME:I = 0x0

.field static final SHORT_NAME:I = 0x1


# instance fields
.field private final iParseLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private final iType:I


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2257
    iput p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    .line 2258
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    .line 2259
    return-void
.end method

.method private print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2272
    if-nez p3, :cond_0

    .line 2273
    const-string v0, ""

    .line 2281
    :goto_0
    return-object v0

    .line 2275
    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    packed-switch v0, :pswitch_data_0

    .line 2281
    const-string v0, ""

    goto :goto_0

    .line 2277
    :pswitch_0
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2279
    :pswitch_1
    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/DateTimeZone;->getShortName(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 2

    .prologue
    .line 2289
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public estimatePrintedLength()I
    .locals 2

    .prologue
    .line 2262
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 6

    .prologue
    .line 2293
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->iParseLookup:Ljava/util/Map;

    .line 2294
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 2295
    :goto_0
    const/4 v2, 0x0

    .line 2296
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2297
    invoke-static {p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWith(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2298
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_4

    :cond_0
    :goto_2
    move-object v2, v0

    .line 2299
    goto :goto_1

    .line 2294
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->getDefaultTimeZoneNames()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2303
    :cond_2
    if-eqz v2, :cond_3

    .line 2304
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setZone(Lorg/joda/time/DateTimeZone;)V

    .line 2305
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    .line 2307
    :goto_3
    return v0

    :cond_3
    xor-int/lit8 v0, p3, -0x1

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2268
    int-to-long v0, p5

    sub-long v0, p2, v0

    invoke-direct {p0, v0, v1, p6, p7}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneName;->print(JLorg/joda/time/DateTimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2269
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2286
    return-void
.end method
