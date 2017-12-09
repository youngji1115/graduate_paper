.class Lcom/tnkfactory/ad/ia;
.super Ljava/lang/Object;


# static fields
.field static final a:[B

.field static final b:Ljava/lang/String;

.field private static c:Lcom/tnkfactory/ad/ia;


# instance fields
.field private d:Lcom/tnkfactory/ad/hu;

.field private e:Lcom/tnkfactory/ad/hg;

.field private f:Lcom/tnkfactory/ad/fa;

.field private g:Lcom/tnkfactory/ad/fo;

.field private h:Lcom/tnkfactory/ad/im;

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "3339306d3f2d336a666c73"

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/tnkfactory/ad/ia;->a:[B

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/tnkfactory/ad/ia;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/tnkfactory/ad/ia;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tnkfactory/ad/hu;

    invoke-direct {v0}, Lcom/tnkfactory/ad/hu;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iput-object v1, p0, Lcom/tnkfactory/ad/ia;->e:Lcom/tnkfactory/ad/hg;

    new-instance v0, Lcom/tnkfactory/ad/fa;

    invoke-direct {v0}, Lcom/tnkfactory/ad/fa;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    iput-object v1, p0, Lcom/tnkfactory/ad/ia;->g:Lcom/tnkfactory/ad/fo;

    iput-object v1, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/ia;->i:I

    iput-boolean v2, p0, Lcom/tnkfactory/ad/ia;->j:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/ia;->k:Z

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ia;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tnkfactory/ad/ia;
    .locals 2

    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tnkfactory/ad/ia;

    invoke-direct {v0, p0}, Lcom/tnkfactory/ad/ia;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    :try_start_0
    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.tnkfactory.framework.vo.ValueObject"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/tnkfactory/ad/fb;->d:Ljava/lang/String;

    const-string v1, "ce6c1586b31ede6ae331704d35ff34b39ed511006a46c7845f43b975"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "On Development System!!??"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Using progard? Put \'-keep class com.tnkfactory.**\' in your proguard setting file !!"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :cond_0
    :goto_0
    return p3

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid meta-data, check \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' setting."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ia;->f()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tnkfactory/ad/ia;->c:Lcom/tnkfactory/ad/ia;

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v0, v0, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v2, Lcom/tnkfactory/ad/hu;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v2, v2, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tnkfactory/ad/hu;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v0, v0, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/tnkfactory/ad/hv;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    const-string v3, "tnkad_app_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tnkfactory/ad/hu;->a:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    const-string v3, "tnkad_tracking"

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/tnkfactory/ad/ia;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/tnkfactory/ad/hu;->y:Z

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    const-string v3, "tnkad_ssl"

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/tnkfactory/ad/ia;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/tnkfactory/ad/hu;->A:Z

    const-string v2, "tnkad_vad"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tnkfactory/ad/ia;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tnkfactory/ad/ia;->k:Z

    const-string v2, "tnkad_adplus"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tnkfactory/ad/ia;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/ia;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v2, v2, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    const-string v3, "com.tnkfactory.ad.AdMediaActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    sparse-switch v0, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tnkfactory/ad/hu;->C:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tnkfactory/ad/hu;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tnkfactory/ad/hu;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/tnkfactory/ad/hu;->i:I

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {p1}, Lcom/tnkfactory/ad/ii;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/tnkfactory/ad/hu;->o:Z

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ia;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-object v3, v1, v6

    iput-object v3, v2, Lcom/tnkfactory/ad/hu;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-object v3, v1, v7

    iput-object v3, v2, Lcom/tnkfactory/ad/hu;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-object v1, v1, v8

    iget-object v3, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v3, v3, Lcom/tnkfactory/ad/hu;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v4, v4, Lcom/tnkfactory/ad/hu;->e:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/tnkfactory/ad/ia;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tnkfactory/ad/hu;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-object v0, v0, v6

    iput-object v0, v1, Lcom/tnkfactory/ad/hu;->p:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ia;->g(Landroid/content/Context;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget v2, v0, v6

    float-to-int v2, v2

    iput v2, v1, Lcom/tnkfactory/ad/hu;->G:I

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget v2, v0, v7

    iput v2, v1, Lcom/tnkfactory/ad/hu;->H:F

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget v0, v0, v8

    iput v0, v1, Lcom/tnkfactory/ad/hu;->J:F

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v1, v1, Lcom/tnkfactory/ad/hu;->G:I

    int-to-float v1, v1

    const/high16 v2, 0x43a00000    # 320.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/tnkfactory/ad/hu;->I:F

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v0, v0, Lcom/tnkfactory/ad/hu;->H:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v2, v2, Lcom/tnkfactory/ad/hu;->I:F

    float-to-double v2, v2

    const-wide v4, 0x3ff3d70a3d70a3d7L    # 1.24

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v1, v1, Lcom/tnkfactory/ad/hu;->H:F

    iput v1, v0, Lcom/tnkfactory/ad/hu;->I:F

    :cond_0
    invoke-static {p1}, Lcom/tnkfactory/ad/ii;->f(Landroid/content/Context;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-boolean v2, v0, v6

    iput-boolean v2, v1, Lcom/tnkfactory/ad/hu;->v:Z

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-boolean v2, v0, v7

    iput-boolean v2, v1, Lcom/tnkfactory/ad/hu;->w:Z

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    aget-boolean v0, v0, v8

    iput-boolean v0, v1, Lcom/tnkfactory/ad/hu;->x:Z

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {p1}, Lcom/tnkfactory/ad/hv;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {p1}, Lcom/tnkfactory/ad/ii;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->j:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tnkfactory/ad/ii;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tnkfactory/ad/hu;->F:Ljava/lang/String;

    :try_start_2
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-static {p1}, Lcom/tnkfactory/ad/ii;->j(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tnkfactory/ad/hu;->B:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    invoke-direct {p0}, Lcom/tnkfactory/ad/ia;->j()V

    new-instance v0, Lcom/tnkfactory/ad/hg;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    iget-object v3, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-boolean v3, v3, Lcom/tnkfactory/ad/hu;->A:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/tnkfactory/ad/hg;-><init>(Lcom/tnkfactory/ad/hu;Lcom/tnkfactory/ad/fa;Z)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->e:Lcom/tnkfactory/ad/hg;

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    sget-object v1, Lcom/tnkfactory/ad/fb;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    sget-object v1, Lcom/tnkfactory/ad/fb;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->D:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->B:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fa;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    sget-object v1, Lcom/tnkfactory/ad/fb;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tnkfactory/ad/fb;->A:Ljava/lang/String;

    invoke-static {v2}, Lcom/tnkfactory/ad/fb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tnkfactory/ad/fa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/tnkfactory/ad/hu;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialization failed : no meta-data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_0
    const/4 v0, 0x1

    :try_start_4
    iput v0, p0, Lcom/tnkfactory/ad/ia;->i:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v0, "no tnk AdMediaActivity2"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iput-boolean v6, v0, Lcom/tnkfactory/ad/hu;->C:Z

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check pacakge receiver error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private e(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const-string v2, "-"

    const-string v1, ""

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/ii;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network country = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initalization failed : no network operator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/ia;->h(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    sget-object v0, Lcom/tnkfactory/ad/fb;->au:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v0, v4, v5}, Lcom/tnkfactory/ad/ii;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    :try_start_2
    aget-object v0, v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v1, "u"

    sput-object v1, Lcom/tnkfactory/ad/fb;->l:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    :goto_0
    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    const/4 v1, 0x2

    aput-object v0, v3, v1

    return-object v3

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    const-string v3, "no addon found.."

    invoke-static {v3}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v3

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)[F
    .locals 6

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v1, 0x43a00000    # 320.0f

    :try_start_0
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget v1, v5, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v0, v2

    div-float/2addr v0, v1

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen resolution : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [F

    int-to-float v2, v2

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v1, v3, v2

    const/4 v1, 0x2

    aput v0, v3, v1

    return-object v3

    :cond_0
    :try_start_3
    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    move v2, v4

    move v1, v3

    :goto_2
    const-string v3, "intialization failed : no screen resolution"

    invoke-static {v3}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method private h(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/tnkfactory/ad/fb;->as:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/ii;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/tnkfactory/ad/ii;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aget-object v2, v0, v6

    aget-object v3, v0, v7

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    aput-object v5, v4, v6

    const/4 v5, 0x5

    aget-object v5, v0, v5

    aput-object v5, v4, v7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aget-object v0, v0, v8

    aput-object v0, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/tnkfactory/ad/ii;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* application Id      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* application Package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* application Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* device Model        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* device OS Version   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* device Sim Operator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* device Country Code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* device Language     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-object v1, v1, Lcom/tnkfactory/ad/hu;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* screen Resolution   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v1, v1, Lcom/tnkfactory/ad/hu;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* screen Scale        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v1, v1, Lcom/tnkfactory/ad/hu;->H:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* tstore        : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/hu;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* olleh market  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/hu;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* ozstore       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/hu;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method declared-synchronized b(Landroid/content/Context;)Lcom/tnkfactory/ad/fo;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->g:Lcom/tnkfactory/ad/fo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tnkfactory/ad/fo;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->e:Lcom/tnkfactory/ad/hg;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    invoke-direct {v0, p1, v1, v2}, Lcom/tnkfactory/ad/fo;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hu;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->g:Lcom/tnkfactory/ad/fo;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->g:Lcom/tnkfactory/ad/fo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()Lcom/tnkfactory/ad/hg;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->e:Lcom/tnkfactory/ad/hg;

    return-object v0
.end method

.method declared-synchronized c(Landroid/content/Context;)Lcom/tnkfactory/ad/im;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    if-nez v0, :cond_0

    const-string v0, "#### Create Video service"

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/tnkfactory/ad/im;

    iget-object v1, p0, Lcom/tnkfactory/ad/ia;->e:Lcom/tnkfactory/ad/hg;

    iget-object v2, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    iget v3, p0, Lcom/tnkfactory/ad/ia;->i:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/tnkfactory/ad/im;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/hg;Lcom/tnkfactory/ad/hu;I)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Lcom/tnkfactory/ad/fa;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->f:Lcom/tnkfactory/ad/fa;

    return-object v0
.end method

.method e()Lcom/tnkfactory/ad/im;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    return-object v0
.end method

.method declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/im;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/ia;->h:Lcom/tnkfactory/ad/im;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()Lcom/tnkfactory/ad/hu;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ia;->d:Lcom/tnkfactory/ad/hu;

    return-object v0
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ia;->j:Z

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tnkfactory/ad/ia;->k:Z

    return v0
.end method
