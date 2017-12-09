.class Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;
.super Landroid/os/AsyncTask;
.source "CouponDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 116
    new-instance v6, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v6}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 117
    .local v6, "gen":Lcom/google/zxing/MultiFormatWriter;
    iget-object v9, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    invoke-static {v9}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/Coupon;

    move-result-object v9

    iget-object v4, v9, Lcom/cashwalk/cashwalk/util/network/model/Coupon;->pin:Ljava/lang/String;

    .line 119
    .local v4, "data":Ljava/lang/String;
    const/16 v9, 0xf0

    :try_start_0
    invoke-static {v9}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v1

    .line 120
    .local v1, "WIDTH":I
    const/16 v9, 0x78

    invoke-static {v9}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v0

    .line 121
    .local v0, "HEIGHT":I
    sget-object v9, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v4, v9, v1, v0}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    .line 122
    .local v3, "bytemap":Lcom/google/zxing/common/BitMatrix;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 123
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_2

    .line 124
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v0, :cond_1

    .line 125
    invoke-virtual {v3, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_0

    const/high16 v9, -0x1000000

    :goto_2
    invoke-virtual {v2, v7, v8, v9}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 125
    :cond_0
    const/4 v9, -0x1

    goto :goto_2

    .line 123
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 128
    .end local v8    # "j":I
    :cond_2
    iget-object v9, p0, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;

    new-instance v10, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;

    invoke-direct {v10, p0, v2}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/CouponDetailActivity$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10}, Lcom/cashwalk/cashwalk/activity/CouponDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "HEIGHT":I
    .end local v1    # "WIDTH":I
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bytemap":Lcom/google/zxing/common/BitMatrix;
    .end local v7    # "i":I
    :goto_3
    const/4 v9, 0x0

    return-object v9

    .line 137
    :catch_0
    move-exception v5

    .line 138
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
