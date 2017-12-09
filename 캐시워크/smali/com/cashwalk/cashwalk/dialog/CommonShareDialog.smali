.class public Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;
.super Landroid/app/Dialog;
.source "CommonShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static REF_GAME:Ljava/lang/String;

.field public static REF_LOCKSCREEN:Ljava/lang/String;

.field public static REF_MAIN:Ljava/lang/String;

.field public static REF_RANK:Ljava/lang/String;

.field public static REF_STAT:Ljava/lang/String;


# instance fields
.field private SELECT_TYPE:Ljava/lang/String;

.field private isDefault:Z

.field private iv_info_image:Landroid/widget/ImageView;

.field private li_band:Landroid/widget/LinearLayout;

.field private li_etc:Landroid/widget/LinearLayout;

.field private li_facebook:Landroid/widget/LinearLayout;

.field private li_kakao:Landroid/widget/LinearLayout;

.field private mBand:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mEtc:Landroid/view/View$OnClickListener;

.field private mFacebook:Landroid/view/View$OnClickListener;

.field private mKakao:Landroid/view/View$OnClickListener;

.field private mShareUri:Ljava/lang/String;

.field private tv_body_msg:Landroid/widget/TextView;

.field private tv_cancel:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "MAIN"

    sput-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_MAIN:Ljava/lang/String;

    .line 28
    const-string v0, "LOCKSCREEN"

    sput-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_LOCKSCREEN:Ljava/lang/String;

    .line 29
    const-string v0, "STAT"

    sput-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_STAT:Ljava/lang/String;

    .line 30
    const-string v0, "GAME"

    sput-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_GAME:Ljava/lang/String;

    .line 31
    const-string v0, "RANK"

    sput-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_RANK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "shareView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f1001e2

    .line 81
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    sget-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_MAIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 50
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 83
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 84
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 87
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 89
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 93
    const/high16 v0, 0x100000

    invoke-virtual {p3, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 94
    invoke-static {p3}, Lcom/cashwalk/cashwalk/util/Utils;->capturedView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 95
    invoke-virtual {p3, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 97
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "shareView"    # Landroid/view/View;
    .param p4, "kakao"    # Landroid/view/View$OnClickListener;
    .param p5, "facebook"    # Landroid/view/View$OnClickListener;
    .param p6, "band"    # Landroid/view/View$OnClickListener;
    .param p7, "etc"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f1001e2

    .line 139
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    sget-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_MAIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 50
    iput-boolean v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 141
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 142
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 145
    iput-object p4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mKakao:Landroid/view/View$OnClickListener;

    .line 146
    iput-object p5, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mFacebook:Landroid/view/View$OnClickListener;

    .line 147
    iput-object p6, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mBand:Landroid/view/View$OnClickListener;

    .line 148
    iput-object p7, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mEtc:Landroid/view/View$OnClickListener;

    .line 150
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 152
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_0
    invoke-virtual {p3, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 156
    const/high16 v0, 0x100000

    invoke-virtual {p3, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 157
    invoke-static {p3}, Lcom/cashwalk/cashwalk/util/Utils;->capturedView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 158
    invoke-virtual {p3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 160
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "shareView"    # Landroid/view/View;
    .param p4, "isFragment"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v1, 0x7f1001e2

    .line 104
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    sget-object v0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->REF_MAIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 50
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 106
    iput-boolean v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    .line 107
    iput-object p1, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    .line 110
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 112
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 116
    const/high16 v0, 0x100000

    invoke-virtual {p3, v0}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 117
    invoke-static {p3}, Lcom/cashwalk/cashwalk/util/Utils;->capturedView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    .line 118
    invoke-virtual {p3, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 120
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_1
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mKakao:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mFacebook:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mBand:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mEtc:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->setClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method private setClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "kakao"    # Landroid/view/View$OnClickListener;
    .param p2, "facebook"    # Landroid/view/View$OnClickListener;
    .param p3, "band"    # Landroid/view/View$OnClickListener;
    .param p4, "etc"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->isDefault:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_kakao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_facebook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_band:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_etc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_kakao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_facebook:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_band:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_etc:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setLayout()V
    .locals 9

    .prologue
    const v8, 0x7f02020e

    const v7, 0x7f090273

    const v6, 0x7f090272

    .line 267
    const v3, 0x7f100374

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_cancel:Landroid/widget/TextView;

    .line 268
    const v3, 0x7f100370

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_kakao:Landroid/widget/LinearLayout;

    .line 269
    const v3, 0x7f100372

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_facebook:Landroid/widget/LinearLayout;

    .line 270
    const v3, 0x7f100371

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_band:Landroid/widget/LinearLayout;

    .line 271
    const v3, 0x7f100373

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->li_etc:Landroid/widget/LinearLayout;

    .line 272
    const v3, 0x7f10036e

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->iv_info_image:Landroid/widget/ImageView;

    .line 273
    const v3, 0x7f10036f

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_body_msg:Landroid/widget/TextView;

    .line 274
    const v3, 0x7f10036d

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_title:Landroid/widget/TextView;

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, "imageSizeW":I
    const/4 v1, 0x0

    .line 278
    .local v1, "imageSizeH":I
    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->SELECT_TYPE:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 342
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_cancel:Landroid/widget/TextView;

    new-instance v4, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog$1;-><init>(Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    return-void

    .line 278
    :sswitch_0
    const-string v5, "MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "LOCKSCREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "STAT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "RANK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    .line 283
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "share_main"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_body_msg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 291
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 292
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    const v4, 0x7f020215

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->iv_info_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "share_lockscreen"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_body_msg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 306
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 307
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->iv_info_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 299
    :catch_1
    move-exception v0

    .line 300
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 313
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "share_stat"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 318
    :goto_4
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_body_msg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 321
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 322
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    const v4, 0x7f0201f5

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->iv_info_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 314
    :catch_2
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v3

    const-string v4, "share_rank"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 333
    :goto_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090276

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->tv_body_msg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090277

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 336
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 337
    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->iv_info_image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 329
    :catch_3
    move-exception v0

    .line 330
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        -0x78395aa9 -> :sswitch_1
        0x23fdb9 -> :sswitch_0
        0x26442c -> :sswitch_3
        0x26fe54 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 200
    .local v1, "getId":I
    packed-switch v1, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "share_kakao_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.kakao.talk"

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/Utils;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/ShareManager;->postKakaoImage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->dismiss()V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "\uce74\uce74\uc624\ud1a1\uc744 \uc124\uce58\ud574\uc8fc\uc138\uc694."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "share_facebook_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :goto_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/ShareManager;->postFacebookFeed(Landroid/app/Activity;Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->dismiss()V

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "share_band_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 240
    :goto_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.nhn.android.band"

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/Utils;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    const-string v3, ""

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/ShareManager;->postBendFeed(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->dismiss()V

    goto/16 :goto_0

    .line 236
    :catch_2
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "\ubc34\ub4dc\ub97c \uc124\uce58\ud574\uc8fc\uc138\uc694."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    :try_start_3
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    const-string v3, "share_etc_enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 257
    :goto_4
    iget-object v2, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mContext:Landroid/content/Context;

    const-string v3, ""

    iget-object v4, p0, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->mShareUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/util/ShareManager;->postCommonShare(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->dismiss()V

    goto/16 :goto_0

    .line 253
    :catch_3
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x7f100370
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 58
    .local v0, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 60
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    const v1, 0x7f040084

    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->setLayout()V

    .line 65
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/dialog/CommonShareDialog;->init()V

    .line 67
    return-void
.end method
