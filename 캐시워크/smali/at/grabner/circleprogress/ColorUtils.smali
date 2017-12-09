.class public Lat/grabner/circleprogress/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRGBGradient(IIF)I
    .locals 6
    .param p0, "startColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "endColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "proportion"    # F

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 14
    .local v0, "rgb":[I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lat/grabner/circleprogress/ColorUtils;->interpolate(FFF)I

    move-result v1

    aput v1, v0, v3

    .line 15
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lat/grabner/circleprogress/ColorUtils;->interpolate(FFF)I

    move-result v1

    aput v1, v0, v4

    .line 16
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, p2}, Lat/grabner/circleprogress/ColorUtils;->interpolate(FFF)I

    move-result v1

    aput v1, v0, v5

    .line 17
    const/16 v1, 0xff

    aget v2, v0, v3

    aget v3, v0, v4

    aget v4, v0, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static interpolate(FFF)I
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "proportion"    # F

    .prologue
    .line 22
    mul-float v0, p0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method
