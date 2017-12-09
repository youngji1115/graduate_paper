.class final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field private static final maxCacheLen:I = 0xc


# instance fields
.field private final input:[C

.field private final length:I

.field private mark:I

.field private pos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 18
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 19
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 24
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    array-length v0, v0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 25
    return-void
.end method

.method private cacheString(II)Ljava/lang/String;
    .locals 10
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 348
    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 349
    .local v7, "val":[C
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 352
    .local v0, "cache":[Ljava/lang/String;
    const/16 v8, 0xc

    if-le p2, v8, :cond_1

    .line 353
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 377
    :cond_0
    :goto_0
    return-object v1

    .line 356
    :cond_1
    const/4 v2, 0x0

    .line 357
    .local v2, "hash":I
    move v5, p1

    .line 358
    .local v5, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v6, v5

    .end local v5    # "offset":I
    .local v6, "offset":I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 359
    mul-int/lit8 v8, v2, 0x1f

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    aget-char v9, v7, v6

    add-int v2, v8, v9

    .line 358
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_1

    .line 363
    :cond_2
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    and-int v4, v2, v8

    .line 364
    .local v4, "index":I
    aget-object v1, v0, v4

    .line 366
    .local v1, "cached":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 367
    new-instance v1, Ljava/lang/String;

    .end local v1    # "cached":Ljava/lang/String;
    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 368
    .restart local v1    # "cached":Ljava/lang/String;
    aput-object v1, v0, v4

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lorg/jsoup/parser/CharacterReader;->rangeEquals(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 373
    new-instance v1, Ljava/lang/String;

    .end local v1    # "cached":Ljava/lang/String;
    invoke-direct {v1, v7, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 374
    .restart local v1    # "cached":Ljava/lang/String;
    aput-object v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method advance()V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 51
    return-void
.end method

.method consume()C
    .locals 3

    .prologue
    .line 40
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v1, v2, :cond_0

    const v0, 0xffff

    .line 41
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 42
    return v0

    .line 40
    .end local v0    # "val":C
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v1, v2

    goto :goto_0
.end method

.method consumeAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 158
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 159
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 161
    .local v3, "val":[C
    :goto_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v4, v1, :cond_0

    .line 162
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    .line 163
    .local v0, "c":C
    const/16 v4, 0x26

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    .line 168
    .end local v0    # "c":C
    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v4, v2, :cond_2

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v2, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 165
    .restart local v0    # "c":C
    :cond_1
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 168
    .end local v0    # "c":C
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 240
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 242
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 243
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 247
    .end local v0    # "c":C
    :cond_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 228
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_3

    .line 229
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 230
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3

    .line 231
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 235
    .end local v0    # "c":C
    :cond_3
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 195
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_3

    .line 196
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 197
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 203
    .end local v0    # "c":C
    :cond_3
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 208
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v2, v3, :cond_3

    .line 209
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 210
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 215
    .end local v0    # "c":C
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 216
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 217
    .restart local v0    # "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-gt v0, v2, :cond_4

    .line 218
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_1

    .line 223
    .end local v0    # "c":C
    :cond_4
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 173
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 174
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 175
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 177
    .local v3, "val":[C
    :goto_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v4, v1, :cond_0

    .line 178
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    .line 179
    .local v0, "c":C
    const/16 v4, 0x9

    if-eq v0, v4, :cond_0

    const/16 v4, 0xa

    if-eq v0, v4, :cond_0

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    .line 184
    .end local v0    # "c":C
    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v4, v2, :cond_2

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v2, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 181
    .restart local v0    # "c":C
    :cond_1
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 184
    .end local v0    # "c":C
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method consumeTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v1

    .line 105
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 106
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 110
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v1

    .line 116
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 117
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-direct {p0, v2, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 121
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method varargs consumeToAny([C)Ljava/lang/String;
    .locals 7
    .param p1, "chars"    # [C

    .prologue
    .line 126
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 127
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 128
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 130
    .local v3, "val":[C
    :goto_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v4, v1, :cond_0

    .line 131
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-char v0, p1, v4

    .line 132
    .local v0, "c":C
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v6, v3, v6

    if-ne v6, v0, :cond_1

    .line 138
    .end local v0    # "c":C
    :cond_0
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v4, v2, :cond_3

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v4, v2

    invoke-direct {p0, v2, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    return-object v4

    .line 131
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "c":C
    :cond_2
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 138
    :cond_3
    const-string v4, ""

    goto :goto_2
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 4
    .param p1, "chars"    # [C

    .prologue
    .line 142
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 143
    .local v1, "start":I
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    .line 144
    .local v0, "remaining":I
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 146
    .local v2, "val":[C
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-ge v3, v0, :cond_0

    .line 147
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_1

    .line 152
    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    if-le v3, v1, :cond_2

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v1, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 149
    :cond_1
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    goto :goto_0

    .line 152
    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString(II)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 190
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 330
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "loScan":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method current()C
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mark()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    .line 55
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 257
    .local v1, "scanLength":I
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v2

    .line 260
    :cond_1
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v3, v4

    .line 285
    .local v0, "c":C
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-char v1, p1, v3

    .line 286
    .local v1, "seek":C
    if-ne v1, v0, :cond_2

    .line 287
    const/4 v2, 0x1

    goto :goto_0

    .line 285
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method matchesAnySorted([C)Z
    .locals 2
    .param p1, "seq"    # [C

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchesDigit()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 306
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 307
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    .local v1, "scanLength":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v4

    .line 271
    :cond_1
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 273
    .local v2, "upScan":C
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 274
    .local v3, "upTarget":C
    if-ne v2, v3, :cond_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    .end local v2    # "upScan":C
    .end local v3    # "upTarget":C
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method matchesLetter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 299
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    aget-char v0, v2, v3

    .line 300
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method nextIndexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 72
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 74
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int v1, v0, v1

    .line 76
    :goto_1
    return v1

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 88
    .local v4, "startChar":C
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .local v3, "offset":I
    :goto_0
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_4

    .line 90
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 92
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 93
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 94
    .local v2, "last":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-ge v3, v5, :cond_3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    if-gt v2, v5, :cond_3

    .line 95
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    if-ne v0, v2, :cond_3

    .line 97
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int v5, v3, v5

    .line 100
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "last":I
    :goto_2
    return v5

    .line 88
    .restart local v0    # "i":I
    .restart local v2    # "last":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    .end local v2    # "last":I
    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method pos()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 9
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 384
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 385
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    .line 386
    .local v5, "one":[C
    move v1, p1

    .line 387
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v0, p2

    .line 388
    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-eqz v0, :cond_1

    .line 389
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v7, v5, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 394
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v5    # "one":[C
    :cond_0
    :goto_1
    return v6

    .line 392
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "one":[C
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_2
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method

.method rewindToMark()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->mark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 337
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->input:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->length:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->pos:I

    .line 47
    return-void
.end method
