.class public Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WallpaperActivity19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$ViewHolder;,
        Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$WallpaperGridAdapter;,
        Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$ImageSaveAsyncThread;
    }
.end annotation


# static fields
.field private static final REQUEST_PICK:I = 0x77


# instance fields
.field private bg:Landroid/widget/ImageView;

.field private bg_update_progressbar:Landroid/widget/RelativeLayout;

.field private grid:Landroid/widget/GridView;

.field private pref:Landroid/content/SharedPreferences;

.field private selectDrawableId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 61
    const v0, 0x7f0202de

    iput v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    .line 495
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->saveWallpaperToFile(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pickFromGallery()V

    return-void
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg_update_progressbar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;

    .prologue
    .line 52
    iget v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    return v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "x5"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->saveBitmapToFile(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->uploadProfileBg(Ljava/lang/String;)V

    return-void
.end method

.method private pickFromGallery()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/16 v1, 0x77

    invoke-virtual {p0, v0, v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method private saveBitmapToFile(Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "quality"    # I

    .prologue
    .line 273
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v4, "imageFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 277
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p3, p4, p5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 279
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 281
    const/4 v5, 0x1

    move-object v2, v3

    .line 293
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v5

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 285
    if-eqz v2, :cond_0

    .line 287
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 293
    :cond_0
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 288
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private saveWallpaperToFile(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0202de

    const/4 v5, 0x0

    .line 145
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg_update_progressbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    const-string v1, ""

    .line 148
    .local v1, "saveImagePath":Ljava/lang/String;
    const/16 v3, 0x3e7

    if-eq p1, v3, :cond_0

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 229
    iput v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    .line 238
    :goto_0
    new-instance v2, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v2}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 239
    .local v2, "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_ID"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_PATH"

    iget-object v5, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->bgImageUrl:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    new-instance v3, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;

    invoke-direct {v3, p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$3;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->setUser(Lcom/cashwalk/cashwalk/util/network/model/User;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 258
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 268
    .end local v0    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    .end local v2    # "tempUser":Lcom/cashwalk/cashwalk/util/network/model/User;
    :goto_1
    return-void

    .line 151
    :pswitch_0
    iput v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 154
    :pswitch_1
    const v3, 0x7f0202df

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 157
    :pswitch_2
    const v3, 0x7f0202e0

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 160
    :pswitch_3
    const v3, 0x7f0202e1

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 163
    :pswitch_4
    const v3, 0x7f0202e2

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 166
    :pswitch_5
    const v3, 0x7f0202e3

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto :goto_0

    .line 169
    :pswitch_6
    const v3, 0x7f0202e4

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 172
    :pswitch_7
    const v3, 0x7f0202e5

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 175
    :pswitch_8
    const v3, 0x7f0202e6

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 178
    :pswitch_9
    const v3, 0x7f0202e7

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 181
    :pswitch_a
    const v3, 0x7f0202e8

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 184
    :pswitch_b
    const v3, 0x7f0202e9

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 187
    :pswitch_c
    const v3, 0x7f0202ea

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 190
    :pswitch_d
    const v3, 0x7f0202eb

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 193
    :pswitch_e
    const v3, 0x7f0202ec

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 196
    :pswitch_f
    const v3, 0x7f0202ed

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 199
    :pswitch_10
    const v3, 0x7f0202ee

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 202
    :pswitch_11
    const v3, 0x7f0202ef

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 205
    :pswitch_12
    const v3, 0x7f0202f0

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 208
    :pswitch_13
    const v3, 0x7f0202f1

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 211
    :pswitch_14
    const v3, 0x7f0202f2

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 214
    :pswitch_15
    const v3, 0x7f0202f3

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 217
    :pswitch_16
    const v3, 0x7f0202f4

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 220
    :pswitch_17
    const v3, 0x7f0202f5

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 223
    :pswitch_18
    const v3, 0x7f0202f6

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 226
    :pswitch_19
    const v3, 0x7f0202f7

    iput v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->selectDrawableId:I

    goto/16 :goto_0

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LOCKSCREEN_BACKGROUND_TEMP_ID"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    move-object v1, p2

    .line 265
    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->uploadProfileBg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private uploadProfileBg(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectImagePath"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/cashwalk/cashwalk/AppConstants;->AWS_S3_BUCKET_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "USER_ID"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bg_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$2;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V

    invoke-static {p1, v0, v1, v2}, Lcom/cashwalk/cashwalk/util/AWSHelper;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 141
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x438

    const/4 v4, 0x0

    .line 326
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 327
    const v3, 0x7f09018f

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 358
    :goto_0
    return-void

    .line 331
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 347
    :sswitch_0
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, "resultUri":Landroid/net/Uri;
    const/16 v3, 0x3e7

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->saveWallpaperToFile(ILjava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v1    # "resultUri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 335
    .local v2, "sourceUri":Landroid/net/Uri;
    new-instance v0, Lcom/yalantis/ucrop/UCrop$Options;

    invoke-direct {v0}, Lcom/yalantis/ucrop/UCrop$Options;-><init>()V

    .line 336
    .local v0, "options":Lcom/yalantis/ucrop/UCrop$Options;
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarColor(I)V

    .line 337
    const v3, 0x7f090134

    invoke-virtual {p0, v3}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yalantis/ucrop/UCrop$Options;->setToolbarTitle(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Lcom/cashwalk/cashwalk/util/Utils;->checkAppDir()Z

    .line 340
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cashwalk/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yalantis/ucrop/UCrop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 341
    invoke-virtual {v3, v4, v5}, Lcom/yalantis/ucrop/UCrop;->withAspectRatio(FF)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 342
    invoke-virtual {v3, v8, v8}, Lcom/yalantis/ucrop/UCrop;->withMaxResultSize(II)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 343
    invoke-virtual {v3, v0}, Lcom/yalantis/ucrop/UCrop;->withOptions(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/yalantis/ucrop/UCrop;

    move-result-object v3

    .line 344
    invoke-virtual {v3, p0}, Lcom/yalantis/ucrop/UCrop;->start(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 355
    .end local v0    # "options":Lcom/yalantis/ucrop/UCrop$Options;
    .end local v2    # "sourceUri":Landroid/net/Uri;
    :sswitch_2
    invoke-static {p3}, Lcom/yalantis/ucrop/UCrop;->getError(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_0
        0x60 -> :sswitch_2
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 73
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    .line 75
    const v0, 0x7f1002f6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg_update_progressbar:Landroid/widget/RelativeLayout;

    .line 76
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->setBackground()V

    .line 79
    const v0, 0x7f1002f5

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->grid:Landroid/widget/GridView;

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->grid:Landroid/widget/GridView;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$WallpaperGridAdapter;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$WallpaperGridAdapter;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    iget-object v0, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->grid:Landroid/widget/GridView;

    new-instance v1, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19$1;-><init>(Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    return-void
.end method

.method public setBackground()V
    .locals 5

    .prologue
    .line 361
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_ID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 362
    .local v1, "resId":I
    iget-object v2, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->pref:Landroid/content/SharedPreferences;

    const-string v3, "LOCKSCREEN_BACKGROUND_PATH"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 365
    if-lez v1, :cond_0

    .line 366
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->setBackgroundByRes(I)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->setBackgroundByPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBackgroundByPath(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 397
    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 399
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 400
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 402
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 403
    .local v4, "width":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 404
    .local v2, "height":I
    const-string v5, "bg_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-static {}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getInstance()Lcom/cashwalk/cashwalk/util/ImageUrlCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cashwalk/cashwalk/util/ImageUrlCache;->getImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v6, 0x7f0202de

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 425
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "height":I
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 407
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "height":I
    .restart local v3    # "size":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public setBackgroundByRes(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 379
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 380
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 382
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 383
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 385
    .local v1, "height":I
    if-nez p1, :cond_0

    .line 386
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    const v5, 0x7f020056

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/lockscreen/WallpaperActivity19;->bg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method
